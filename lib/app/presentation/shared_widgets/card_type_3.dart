import 'package:flutter/material.dart';

class CardType3 extends StatelessWidget {
  const CardType3({super.key, required this.label, required this.elevation});

  final String label;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      color: colors.surface,
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
