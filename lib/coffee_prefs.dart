import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int _strength = 1;
  int _sugars = 1;
  void _increaseStrength() {
    debugPrint("Implement logic to increase strength");
    setState(() {
      _strength = _strength < 5 ? _strength + 1 : 1;
    });
  }

  void _increaseSugars() {
    debugPrint("Implement logic to increase sugars");
    setState(() {
      _sugars = _sugars < 5 ? _sugars + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text("Strength: "),
            for (int i = 0; i < _strength; i++)
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
            if (_sugars == 0) const Text("No sugars..."),
            for (int i = 0; i < _sugars; i++)
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
