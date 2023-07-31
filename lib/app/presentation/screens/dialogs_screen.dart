import 'package:flutter/material.dart';

class DialogsScreen extends StatelessWidget {
  static const String name = "snackbar_screen";
  const DialogsScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackBar = SnackBar(
      content: const Text("Hola mundo"),
      action: SnackBarAction(
          label: "Ok",
          onPressed: () {
            print("Ok snackbar clicked");
          }),
      duration: const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Estas seguro de cerrar la sesión?"),
        content: const Text(
            "Si cierras la sesion se borraran todos tus datos de la cache"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Cancelar"),
          ),
          FilledButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Aceptar"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snackbars & Dialogs"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [
                    const Text(
                        "Estas son las licencias que tenemos ahora para porder reivsar y practicar en nuestras app de ejemplo")
                  ],
                );
              },
              child: const Text("Licencias usadas"),
            ),
            FilledButton.tonal(
              onPressed: () {
                openDialog(context);
              },
              child: const Text("Mostrar Dialogo"),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showCustomSnackbar(context),
        child: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}
