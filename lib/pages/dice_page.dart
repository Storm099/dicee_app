import 'package:flutter/material.dart';
import 'dart:math' as storm099;

class DicePage extends StatefulWidget {
  static const String id = "dice_page";
  
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftPoint = 1;
  int rightPoint = 1;

  void _changePoint(){
    setState(() {
      leftPoint = storm099.Random().nextInt(6) + 1;
      rightPoint = storm099.Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: GestureDetector(
                onTap: (){
                  _changePoint();
                },
                child: Image(
                  image: AssetImage("assets/images/dice$leftPoint.png"),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: GestureDetector(
                onTap: (){
                  _changePoint();
                },
                child: Image(
                  image: AssetImage("assets/images/dice$rightPoint.png"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
