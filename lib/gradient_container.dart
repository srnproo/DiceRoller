import 'package:flutter/material.dart';
import 'package:hello/dice_roller.dart';


class GradientContainer extends StatelessWidget {
  const  GradientContainer(this.cOlor1, this.cOlor2,
      {super.key}); //super(key:key) //takes a parameter key and forwards to super class of statelesswidget too
  final Color cOlor1, cOlor2;
 
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [cOlor1, cOlor2],
              begin: const Alignment(-1, -1),
              end: const Alignment(0.5, 0.5))),
      child: Center(
        child: DiceRoller()
      ),
    );
  }
}

class StyleText extends StatelessWidget {
  const StyleText(this.text, {super.key});
  final String text;
  @override
  Widget build(context) {
    return Text(text,
        style: const TextStyle(color: Colors.white, fontSize: 28));
  }
}
