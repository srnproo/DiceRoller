import 'package:flutter/material.dart';
import 'dart:math';
final randomizer = Random();
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
} //first class

class _DiceRollerState extends State<DiceRoller> { // the undrscore in the beginning tells dart that it is private class

  var currentDiceRoll = 2; 

  void rollDice() {
    //body
    
    setState(() {
     currentDiceRoll = randomizer.nextInt(6)+1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                  fontSize:
                      28)), // anonymous function // you can also add function defined outside
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
