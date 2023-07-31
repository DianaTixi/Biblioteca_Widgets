import 'package:flutter/material.dart';

class CardType4 extends StatelessWidget {
  const CardType4({super.key, required this.label, required this.elevation});

  final String label;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.hardEdge,
        elevation: elevation,
        child: Stack(
          children: [
            Image.network(
              "https://picsum.photos/id/${elevation.toInt()}/600/350",
              height: 350,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert_outlined),
                ),
              ),
            ),
          ],
        ));
  }
}
