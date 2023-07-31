import 'package:flutter/material.dart';

class ProgressIndicatorView extends StatelessWidget {
  const ProgressIndicatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(milliseconds: 300), (value) {
        double valor = (value * 2) / 100;
        return valor;
      }).takeWhile((element) => element <= 1),
      builder: (context, snapshot) {
        final value = snapshot.data ?? 0;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              CircularProgressIndicator(
                strokeWidth: 2,
                backgroundColor: Colors.black12,
                value: value,
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: LinearProgressIndicator(
                  value: value,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
