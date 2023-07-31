import 'package:biblioteca_widgets/app/presentation/views/list_menu_view.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Biblioteca"),
      ),
      body: const ListMenuView(),
    );
  }
}
