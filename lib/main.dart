import 'package:calculator_app_3/provider/cal_Provider.dart';
import 'package:calculator_app_3/screens/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main(){
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CalculatorProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: homeScreen()
      ),
    );
  }
}