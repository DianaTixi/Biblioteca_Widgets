import 'package:biblioteca_widgets/app/presentation/views/ui_controls_view.dart';
import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("UiControls Screen"),
      ),
      body: const UiControlsView(),
    );
  }
}
