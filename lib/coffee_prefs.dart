import 'package:flutter/material.dart';

class CoffeePrefs extends StatelessWidget {
  const CoffeePrefs({super.key});

  void _increaseStrength() {
    // TODO: Implement logic to increase strength
  }

  void _increaseSugars() {
    // TODO: Implement logic to increase sugars
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text("Strength: "),
            const Text("3"),
            Image.asset(
              "assets/img/coffee_bean.png",
              width: 25,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply,
            ),
            const Expanded(
              child: SizedBox(),
            ),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white,
              ),
              onPressed: _increaseStrength,
              child: const Text('+'),
            )
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            const Text("Sugars: "),
            const Text("3"),
            Image.asset(
              "assets/img/sugar_cube.png",
              width: 25,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply,
            ),
            const Expanded(
              child: SizedBox(),
            ),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white,
              ),
              onPressed: _increaseSugars,
              child: const Text('+'),
            )
          ],
        ),
      ],
    );
  }
}
