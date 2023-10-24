import 'package:calculator_app_3/provider/cal_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomeButtons extends StatelessWidget {
  const CustomeButtons(
      {super.key,
      required this.title,
      required this.onpressed,
      required this.textColor,
      this.fontsize = 40,
      this.bgcolor = Colors.transparent,
      this.elevation = 0.0
      });
  final String title;
  final Function() onpressed;
  final Color textColor;
  final double fontsize;
  final  bgcolor;
  final double elevation;
 
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Provider.of<CalculatorProvider>(context, listen: false).Setvalue(title);
      },
      child: SizedBox(
        width: 65,
        height: 65,
        child: ElevatedButton(
          onPressed: onpressed,
          child: Text(
            title,
            style: TextStyle(fontSize: fontsize, color: textColor),
          ),
          style: ElevatedButton.styleFrom(
            elevation: elevation,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            backgroundColor: bgcolor,
          ),
        ),
      ),
    );
  }
}
