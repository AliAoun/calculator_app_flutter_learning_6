
import 'package:calculator_app_flutter_learning_6/constant.dart';
import 'package:calculator_app_flutter_learning_6/my_button.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: Text('Calculator',style: TextStyle(color: Colors.black))),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Color(0xfff8f8f8),
                child: TextField(
                  readOnly:true,
                  autofocus: true,
                  showCursor: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.5),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          MyButton(title: 'C'),
                          MyButton(title: '7'),
                          MyButton(title: '4'),
                          MyButton(title: '1'),
                          MyButton(title: '%'),
                        ],
                      ),
                      Column(
                        children: [
                          MyButton(title: '/'),
                          MyButton(title: '8'),
                          MyButton(title: '5'),
                          MyButton(title: '2'),
                          MyButton(title: '0'),
                        ],
                      ),
                      Column(
                        children: [
                          MyButton(title: 'X'),
                          MyButton(title: '9'),
                          MyButton(title: '6'),
                          MyButton(title: '3'),
                          MyButton(title: '.'),
                        ],
                      ),
                      Column(
                        children: [
                          MyButton(title: 'DEL'),
                          MyButton(title: '-'),
                          MyButton(title: '+'),
                          MyButton(title: '='),
                          MyButton(title: '='),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
