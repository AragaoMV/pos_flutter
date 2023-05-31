import 'package:flutter/cupertino.dart';

class BotaoQuadrado extends StatelessWidget {

  final String texto;
  final VoidCallback? clique;

  const BotaoQuadrado({
    required this.texto,
    this.clique,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      SizedBox(
        width: 200,
        child: CupertinoButton(
          color: CupertinoColors.activeBlue ,
            onPressed: clique,
            child: Text(texto)
        ),
      );
  }
}
