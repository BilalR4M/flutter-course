import 'dart:math';

import 'package:flutter/material.dart';
final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  
  var currentDice = 2;

  void rollDice() {
 
    setState(() {
      currentDice = randomizer.nextInt(6) + 1; 
    });
    
  }


  @override
  Widget build(BuildContext context) {
    return  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/dice-$currentDice.png',
              width: 200,
            ),
            TextButton(
                onPressed: rollDice,
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 28),
                  backgroundColor: Colors.black,
                  padding: const EdgeInsets.all(16),
                ),

                child: const Text(
                  'Roll the dice',
                )),
          ],
        );
  }
}