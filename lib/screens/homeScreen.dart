import 'package:calculator_app_3/component/themeColors.dart';
import 'package:calculator_app_3/provider/cal_Provider.dart';
import 'package:calculator_app_3/widgets/buttons.dart';
import 'package:calculator_app_3/widgets/textField.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key});
  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  bool _iconBool = true;
  IconData iconSun = Icons.wb_sunny;
  IconData iconMoon = Icons.nights_stay;

  Color _changesColorTheme() {
    return _iconBool ? textColordark : textColorwhite;
  }

  void _toggleIcon() {
    setState(() {
      _iconBool = !_iconBool;
    });
  }

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final appbar = AppBar(
      elevation: 0,
      backgroundColor: _iconBool
          ? Color.fromARGB(255, 227, 229, 234)
          : Color.fromARGB(255, 8, 17, 28),
      title: Text(
        'Calculator',
        style: TextStyle(color: _changesColorTheme()),
      ),
      actions: [
        IconButton(
          onPressed: _toggleIcon,
          icon: Icon(_iconBool ? iconSun : iconMoon),
          color: _changesColorTheme(),
        )
      ],
    );
    final bodyHeight = mediaQueryHeight -
        appbar.preferredSize.height -
        MediaQuery.of(context).padding.top;
    return SafeArea(
      child: Consumer<CalculatorProvider>(builder: (context, provider, _) {
        return Scaffold(
          appBar: appbar,
          body: ListView(children: <Widget>[
            Center(
                child: Column(
              children: <Widget>[
                Container(
                    width: double.infinity,
                    height: bodyHeight * 0.3,
                    decoration: BoxDecoration(
                        gradient:
                            _iconBool ? whiteGreyGradient : darkGreenGradient),
                    child: CustomeTextField(
                      textfieldColor: _changesColorTheme(),
                      textcontroller: provider.compController,
                    )),
                Container(
                  padding: EdgeInsets.all(5),
                  width: double.infinity,
                  height: bodyHeight * 0.7,
                  decoration: BoxDecoration(
                      gradient:
                          _iconBool ? whiteGreyGradient2 : darkGreenGradient2),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            CustomeButtons(
                              title: 'c',
                              onpressed: () {
                                provider.Setvalue('c');
                              },
                              textColor: const Color.fromARGB(255, 193, 74, 66),
                            ),
                            CustomeButtons(
                              title: '/',
                              onpressed: () {
                                provider.Setvalue('/');
                              },
                              textColor: textColorgreen,
                            ),
                            CustomeButtons(
                              title: 'x',
                              onpressed: () {
                                provider.Setvalue('x');
                              },
                              textColor: textColorgreen,
                            ),
                            CustomeButtons(
                              title: 'DEL',
                              onpressed: () {
                                provider.Setvalue('DEL');
                              },
                              textColor: textColorgreen,
                              fontsize: 18,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            CustomeButtons(
                              title: '1',
                              onpressed: () {
                                provider.Setvalue('1');
                              },
                              textColor: _changesColorTheme(),
                            ),
                            CustomeButtons(
                              title: '2',
                              onpressed: () {
                                provider.Setvalue('2');
                              },
                              textColor: _changesColorTheme(),
                            ),
                            CustomeButtons(
                              title: '3',
                              onpressed: () {
                                provider.Setvalue('3');
                              },
                              textColor: _changesColorTheme(),
                            ),
                            CustomeButtons(
                              title: '-',
                              onpressed: () {
                                provider.Setvalue('-');
                              },
                              textColor: textColorgreen,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            CustomeButtons(
                              title: '4',
                              onpressed: () {
                                provider.Setvalue('4');
                              },
                              textColor: _changesColorTheme(),
                            ),
                            CustomeButtons(
                              title: '5',
                              onpressed: () {
                                provider.Setvalue('5');
                              },
                              textColor: _changesColorTheme(),
                            ),
                            CustomeButtons(
                              title: '6',
                              onpressed: () {
                                provider.Setvalue('6');
                              },
                              textColor: _changesColorTheme(),
                            ),
                            CustomeButtons(
                              title: '+',
                              onpressed: () {
                                provider.Setvalue('+');
                              },
                              textColor: textColorgreen,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            CustomeButtons(
                              title: '7',
                              onpressed: () {
                                provider.Setvalue('7');
                              },
                              textColor: _changesColorTheme(),
                            ),
                            CustomeButtons(
                              title: '8',
                              onpressed: () {
                                provider.Setvalue('8');
                              },
                              textColor: _changesColorTheme(),
                            ),
                            CustomeButtons(
                              title: '9',
                              onpressed: () {
                                provider.Setvalue('9');
                              },
                              textColor: _changesColorTheme(),
                            ),
                            CustomeButtons(
                              title: '%',
                              onpressed: () {
                                provider.Setvalue('%');
                              },
                              textColor: textColorgreen,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            CustomeButtons(
                              title: ',',
                              onpressed: () {
                                provider.Setvalue('.');
                              },
                              textColor: _changesColorTheme(),
                            ),
                            CustomeButtons(
                              title: '0',
                              onpressed: () {
                                provider.Setvalue('0');
                              },
                              textColor: _changesColorTheme(),
                            ),
                            CustomeButtons(
                              title: '00',
                              onpressed: () {
                                provider.Setvalue('00');
                              },
                              textColor: _changesColorTheme(),
                              fontsize: 25,
                            ),
                            Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    gradient: button),
                                child: CustomeButtons(
                                  title: '=',
                                  onpressed: () {
                                    provider.Setvalue('=');
                                  },
                                  textColor: textColorwhite,
                                )),
                          ],
                        ),
                      ]),
                )
              ],
            ))
          ]),
        );
      }),
    );
  }
}
