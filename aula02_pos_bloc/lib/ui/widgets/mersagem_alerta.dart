import 'package:flutter/material.dart';

class MensagemAleta{
  void show({
    required BuildContext context,
    required String titulo,
    required String texto,
}) {
    showDialog(context: context, builder: (context) {
  return AlertDialog(
    title: Text(titulo),
    content: Text(texto),
    actions: [
      TextButton(onPressed: (){Navigator.pop(context);},
          child: const Text('ok'))
    ],
      );
    });
  }
}