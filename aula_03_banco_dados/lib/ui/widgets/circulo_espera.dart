import 'package:flutter/material.dart';

class CirculoEspera extends StatelessWidget {
  const CirculoEspera({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(strokeWidth: 8),
          SizedBox(height: 8,),
          Text('Carregando...'),
        ],
      ),
    );
  }
}