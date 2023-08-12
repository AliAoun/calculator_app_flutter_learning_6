import 'package:calculator_app_flutter_learning_6/constant.dart';
import 'package:calculator_app_flutter_learning_6/my_button.dart';
import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var userInput = '';
  var result = '';
  bool isDarkModeEnabled = false;
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        titleTextStyle:
            const TextStyle(textBaseline: TextBaseline.alphabetic, fontSize: 26),
        backgroundColor: isDarkModeEnabled ? blackDarkMode : whiteColorC,
        title: Text(
          'Calculator',
          style: TextStyle(
            color: isDarkModeEnabled ? offWhite : blackColorC,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 50,
              width: 75,
              child: DayNightSwitcher(
                dayBackgroundColor: Colors.blue,
                isDarkModeEnabled: isDarkModeEnabled,
                onStateChanged: (isDarkModeEnabled) {
                  setState(() {
                    this.isDarkModeEnabled = isDarkModeEnabled;
                  });
                },
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.bottomRight,
                color: isDarkModeEnabled ? blackDarkMode : whiteDarkShareColorC,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                  child: SingleChildScrollView(
                    child: TextField(
                      controller: _textEditingController,
                      style: TextStyle(
                          fontSize: 50,
                          color: isDarkModeEnabled ? offWhite : Colors.black),
                      readOnly: true,
                      textAlign: TextAlign.right,
                      autofocus: true,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color:
                    isDarkModeEnabled ? black2ndVersionDarkMode : whiteColorC,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          MyButton(
                            title: 'C',
                            onPress: () {
                              userInput = '';
                              result = '';
                              _textEditingController.text = '';
                            },
                            colorText: blueOperatorsColorC,
                          ),
                          MyButton(
                            title: '7',
                            onPress: () {
                              userInput += '7';
                              _textEditingController.text = userInput;
                            },
                            colorText:
                                isDarkModeEnabled ? offWhite : blackColorC,
                          ),
                          MyButton(
                            title: '4',
                            onPress: () {
                              userInput += '4';
                              _textEditingController.text = userInput;
                            },
                            colorText:
                                isDarkModeEnabled ? offWhite : blackColorC,
                          ),
                          MyButton(
                            title: '1',
                            onPress: () {
                              userInput += '1';
                              _textEditingController.text = userInput;
                            },
                            colorText:
                                isDarkModeEnabled ? offWhite : blackColorC,
                          ),
                          MyButton(
                            title: '%',
                            onPress: () {
                              userInput += '%';
                              _textEditingController.text = userInput;
                            },
                            colorText: blueOperatorsColorC,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          MyButton(
                            title: '/',
                            onPress: () {
                              userInput += '/';
                              _textEditingController.text = userInput;
                            },
                            colorText: blueOperatorsColorC,
                          ),
                          MyButton(
                            title: '8',
                            onPress: () {
                              userInput += '8';
                              _textEditingController.text = userInput;
                            },
                            colorText:
                                isDarkModeEnabled ? offWhite : blackColorC,
                          ),
                          MyButton(
                            title: '5',
                            onPress: () {
                              userInput += '5';
                              _textEditingController.text = userInput;
                            },
                            colorText:
                                isDarkModeEnabled ? offWhite : blackColorC,
                          ),
                          MyButton(
                            title: '2',
                            onPress: () {
                              userInput += '2';
                              _textEditingController.text = userInput;
                            },
                            colorText:
                                isDarkModeEnabled ? offWhite : blackColorC,
                          ),
                          MyButton(
                            title: '0',
                            onPress: () {
                              userInput += '0';
                              _textEditingController.text = userInput;
                            },
                            colorText:
                                isDarkModeEnabled ? offWhite : blackColorC,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          MyButton(
                            title: 'x',
                            onPress: () {
                              userInput += '*';
                              _textEditingController.text = userInput;
                            },
                            colorText: blueOperatorsColorC,
                          ),
                          MyButton(
                            title: '9',
                            onPress: () {
                              userInput += '9';
                              _textEditingController.text = userInput;
                            },
                            colorText:
                                isDarkModeEnabled ? offWhite : blackColorC,
                          ),
                          MyButton(
                            title: '6',
                            onPress: () {
                              userInput += '6';
                              _textEditingController.text = userInput;
                            },
                            colorText:
                                isDarkModeEnabled ? offWhite : blackColorC,
                          ),
                          MyButton(
                            title: '3',
                            onPress: () {
                              userInput += '3';
                              _textEditingController.text = userInput;
                            },
                            colorText:
                                isDarkModeEnabled ? offWhite : blackColorC,
                          ),
                          MyButton(
                            title: '.',
                            onPress: () {
                              userInput += '.';
                              _textEditingController.text = userInput;
                            },
                            colorText:
                                isDarkModeEnabled ? offWhite : blackColorC,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          MyButton(
                            title: 'DEL',
                            onPress: () {
                              userInput =
                                  userInput.substring(0, userInput.length - 1);
                              _textEditingController.text = userInput;
                            },
                            colorText: blueOperatorsColorC,
                          ),
                          MyButton(
                            title: '-',
                            onPress: () {
                              userInput += '-';
                              _textEditingController.text = userInput;
                            },
                            colorText: blueOperatorsColorC,
                          ),
                          MyButton(
                            title: '+',
                            onPress: () {
                              userInput += '+';
                              _textEditingController.text = userInput;
                            },
                            colorText: blueOperatorsColorC,
                          ),
                          Expanded(
                              flex: 2,
                              child: Column(
                                children: [
                                  MyButton(
                                      title: '=',
                                      onPress: () {
                                        equalPressed();
                                        _textEditingController.text = result;
                                        userInput = _textEditingController.text;
                                      },
                                      color: blueOperatorsColorC,
                                      colorText: whiteColorC,
                                      width: 140),
                                ],
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void equalPressed() {
    Parser p = Parser();
    Expression expression = p.parse(userInput);
    ContextModel contextModel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    result = eval.toString();
  }
}
