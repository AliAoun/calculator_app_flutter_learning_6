import 'package:calculator_app_flutter_learning_6/constant.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  const MyButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: InkWell(
          onTap: () {},
          onLongPress: () {}, // Handle long press
          highlightColor: Colors.green,
          splashColor: Colors.green,
          child: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
            ),
            child: Center(
              child: Text(
                title,
                style: TextStyle(fontSize: 30, color: blackColorC),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
