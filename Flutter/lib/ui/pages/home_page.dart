import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _textoControler = TextEditingController();
  var _textoOla = 'Seja Bem-Vindo';

  void _cliqueBotao(){
    setState(() {
      _textoOla= 'Seja Bem Vindo ${_textoControler.text}';
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar
        (title: const Text('Meu App - Aula 01'),
        centerTitle: true,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _cliqueBotao,
        backgroundColor: const Color(0xFF098CEA),
        child: const Icon(Icons.add),
      ),

      body: Column(
        children: [
          const Text('Hello World!'),
          Text(_textoOla),
          Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(controller: _textoControler,
              ),
          ),
          ElevatedButton(
              onPressed: _cliqueBotao,
              child: const Text('OK'),
          )
        ],
      ),
    );
  }
}
