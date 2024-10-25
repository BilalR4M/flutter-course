import 'package:dice_roll_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.colors,
  });

  CustomContainer.purple({
    super.key,
  }) : colors = [
    const Color.fromARGB(255, 56, 38, 87),
    const Color.fromARGB(255, 82, 2, 78),
  ];

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            colors[0],
            colors[1],
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller()
      ),
    );
  }
}
