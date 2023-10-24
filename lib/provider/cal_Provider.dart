import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class CalculatorProvider extends ChangeNotifier {
  final compController = TextEditingController();
  Setvalue(String value) {
    String stringText = compController.text;
    switch (value) {
      case 'c':
        compController.clear();
        break;
      case '/':
        compController.text += '/';
        break;
      case 'x':
        compController.text += '*';
        break;
      case 'DEL':
        compController.text = stringText.substring(0, stringText.length - 1);
        break;
      case '=':
      _compute();
      break;
      default:
      compController.text += value;
    }
  }
void _compute() {
    String text = compController.text;
    try {
      compController.text = text.interpret().toString();
    } catch (e) {
      compController.text = 'Error';
    }
  }
  @override
  void dispose() {
    super.dispose();
    compController.dispose();
  }
}
