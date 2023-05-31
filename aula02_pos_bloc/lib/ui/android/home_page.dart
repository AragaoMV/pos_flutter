import 'package:aula02_pos_bloc/blocs/calculo_combustivel_bloc.dart';
import 'package:aula02_pos_bloc/constantes.dart';
import 'package:aula02_pos_bloc/ui/android/widgets/botao_quadrado.dart';
import 'package:aula02_pos_bloc/ui/android/widgets/campo_texto.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key?key}) : super(key:key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  @override
  Widget build(BuildContext context){
    final calcBloc = CalculoCombustivelBloc(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(Constantes.tituloApp),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CampoTexto(texto: 'Nome', teclado: TextInputType.text,controlador: calcBloc.nomeController,),
            CampoTexto(texto: 'CPF',controlador: calcBloc.cpfController),
            CampoTexto(texto: 'Etanol',controlador: calcBloc.etanolController),
            CampoTexto(texto: 'Gasolina',controlador: calcBloc.gasolinaController),
            BotaoQuadrado(texto: 'Calcular', clique: calcBloc.calcular,)
          ],
        ),
      )
    );
  }
}
