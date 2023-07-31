import 'package:flutter/material.dart';

class BotonesScreen extends StatelessWidget {
  const BotonesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Botones page"),
      ),
      body: Wrap(
        spacing: 10,
        alignment: WrapAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              print("toco el ElevatedButton");
            },
            child: const Text("ElevatedButton"),
          ),
          const ElevatedButton(
            onPressed: null,
            child: Text("ElevatedButton disabled"),
          ),
          ElevatedButton.icon(
            onPressed: () {
              print("toco el ElevatedButton");
            },
            icon: const Icon(Icons.camera),
            label: const Text("ElevatedButton.icon"),
          ),
          FilledButton(
            onPressed: () {},
            child: const Text("FilledButton"),
          ),
          FilledButton.icon(
            onPressed: () {},
            label: const Text("FilledButton.icon"),
            icon: const Icon(Icons.note),
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text("OutlinedButton"),
          ),
          OutlinedButton.icon(
            onPressed: () {},
            label: const Text("OutlinedButton.icon"),
            icon: const Icon(Icons.payments),
          ),
          TextButton(
            onPressed: () {},
            child: const Text("TextButton"),
          ),
          TextButton.icon(
            onPressed: () {},
            label: const Text("TextButton"),
            icon: const Icon(Icons.play_arrow),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.pause),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.recent_actors_outlined),
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(colors.primary),
              iconColor: const MaterialStatePropertyAll(Colors.white),
            ),
          ),
          //custom button
          InkWell(
            borderRadius: BorderRadius.circular(44),
            onTap: () {
              print("custom button clicked");
            },
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Icon(
                Icons.record_voice_over,
                color: Colors.white,
                size: 45,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.chevron_left_rounded),
      ),
    );
  }
}
