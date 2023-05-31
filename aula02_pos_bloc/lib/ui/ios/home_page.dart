import 'package:aula02_pos_bloc/blocs/calculo_combustivel_bloc.dart';
import 'package:aula02_pos_bloc/constantes.dart';
import 'package:aula02_pos_bloc/ui/ios/widgets/botao_quadrado.dart';
import 'package:aula02_pos_bloc/ui/ios/widgets/campo_texto.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    @override
  Widget build(BuildContext context) {

    final calcBloc = CalculoCombustivelBloc(context);

    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text(Constantes.tituloApp),
      ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                CampoTexto(texto: 'Nome',teclado: TextInputType.text,controlador: calcBloc.nomeController),
                CampoTexto(texto: 'Cpf',controlador: calcBloc.cpfController),
                CampoTexto(texto: 'Etanol',controlador: calcBloc.etanolController),
                CampoTexto(texto: 'Gasolina', controlador: calcBloc.gasolinaController),
                BotaoQuadrado(texto: 'Calcular',clique: calcBloc.calcular,)
              ],
            )
          ),
        )
    );
  }
}
