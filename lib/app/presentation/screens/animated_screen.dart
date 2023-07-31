import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double width = 150;
  double height = 300;
  Color color = Colors.indigo;
  double borderRadius = 10.0;

  void changeShape() {
    final random = Random();
    width = random.nextInt(300) + 100;
    height = random.nextInt(400) + 200;
    color = Color.fromRGBO(
        random.nextInt(255), random.nextInt(255), random.nextInt(255), 1.0);
    borderRadius = random.nextInt(100) + 5;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Screen"),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 700),
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          curve: Curves.easeInOutCubic,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: const Icon(Icons.play_arrow_rounded),
      ),
    );
  }
}
