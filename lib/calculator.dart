import 'package:calculator_app_flutter_learning_6/constant.dart';
import 'package:calculator_app_flutter_learning_6/my_button.dart';
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
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    TextEditingController _textEditingController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
            child: Text('Calculator', style: TextStyle(color: Colors.black))),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.bottomRight,
                color: whiteDarkShareColorC,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                  child: SingleChildScrollView(
                    child: TextField(
                      style: TextStyle(fontSize: 50),
                      controller: _textEditingController,
                      readOnly: true,
                      textAlign: TextAlign.right,
                      autofocus: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // Divider(
            //   indent: 10,
            //   endIndent: 10,
            // ),
            Expanded(
              flex: 2,
              child: Container(
                color: whiteColorC,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.5),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          MyButton(title: 'C', onPress: (){userInput = ''; result = ''; _textEditingController.text = '';}, colorText: greenOperatorsColorC,),
                          MyButton(title: '7', onPress: (){userInput += '7'; _textEditingController.text = userInput;},),
                          MyButton(title: '4', onPress: (){userInput += '4'; _textEditingController.text = userInput;},),
                          MyButton(title: '1', onPress: (){userInput += '1'; _textEditingController.text = userInput;},),
                          MyButton(title: '%', onPress: (){userInput += '%'; _textEditingController.text = userInput;},),
                        ],
                      ),
                      Column(
                        children: [
                          MyButton(title: '/', onPress: (){userInput += '/'; _textEditingController.text = userInput;},colorText: greenOperatorsColorC,),
                          MyButton(title: '8', onPress: (){userInput += '8'; _textEditingController.text = userInput;},),
                          MyButton(title: '5', onPress: (){userInput += '5'; _textEditingController.text = userInput;},),
                          MyButton(title: '2', onPress: (){userInput += '2'; _textEditingController.text = userInput;},),
                          MyButton(title: '0', onPress: (){userInput += '0'; _textEditingController.text = userInput;},),
                        ],
                      ),
                      Column(
                        children: [
                          MyButton(title: 'X', onPress: (){userInput += '*'; _textEditingController.text = userInput;}, colorText: greenOperatorsColorC,),
                          MyButton(title: '9', onPress: (){userInput += '9'; _textEditingController.text = userInput;},),
                          MyButton(title: '6', onPress: (){userInput += '6'; _textEditingController.text = userInput;},),
                          MyButton(title: '3', onPress: (){userInput += '3'; _textEditingController.text = userInput;},),
                          MyButton(title: '.', onPress: (){userInput += '.'; _textEditingController.text = userInput;},),
                        ],
                      ),
                      Column(
                        children: [
                          MyButton(title: 'DEL', onPress: (){ userInput = userInput.substring(0,userInput.length-1); _textEditingController.text = userInput;}, colorText: greenOperatorsColorC,),
                          MyButton(title: '-', onPress: (){userInput += '-'; _textEditingController.text = userInput;}, colorText: greenOperatorsColorC,),
                          MyButton(title: '+', onPress: (){userInput += '+'; _textEditingController.text = userInput;}, colorText: greenOperatorsColorC,),
                          MyButton(title: '=', onPress: (){equalPressed(); _textEditingController.text = result; userInput = result;}, color: greenOperatorsColorC,colorText: whiteColorC,height: 140),
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


  void equalPressed(){
    Parser p = Parser();
    Expression expression = p.parse(userInput);
    ContextModel contextModel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    result = eval.toString();
  }
}
