import 'package:biblioteca_widgets/app/presentation/views/progress_indicator_view.dart';
import 'package:flutter/material.dart';

class ProgressIndicatorScreen extends StatelessWidget {
  const ProgressIndicatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ProgressIndicator Screen"),
      ),
      body: const Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text("Circular progress indicator"),
            SizedBox(
              height: 10,
            ),
            CircularProgressIndicator(
              strokeWidth: 10,
              backgroundColor: Colors.black45,
            ),
            SizedBox(
              height: 20,
            ),
            Text("Circular y lineal progress indicator controlados"),
            SizedBox(
              height: 10,
            ),
            ProgressIndicatorView(),
          ],
        ),
      ),
    );
  }
}
