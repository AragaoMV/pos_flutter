import 'package:flutter/cupertino.dart';

class CampoTexto extends StatelessWidget {

  final String texto;
  final TextInputType teclado;
  final TextEditingController controlador;

  const CampoTexto({
    required this.texto,
    required this.controlador,
    this.teclado = TextInputType.number,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
        child: CupertinoTextField(
          controller: controlador,
          keyboardType: teclado,
          placeholder: texto,
        ),
    );
  }
}
