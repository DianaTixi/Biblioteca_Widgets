import 'package:flutter/material.dart';

class CardType1 extends StatelessWidget {
  const CardType1({super.key, required this.label, required this.elevation});

  final String label;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.move_down_outlined),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(label),
            ),
          ],
        ),
      ),
    );
  }
}
