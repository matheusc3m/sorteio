import 'package:flutter/material.dart';
import 'package:sorteio/classes/botoes_model.dart';
import 'package:sorteio/components/custom_input_widget.dart';

class Home2Screen extends StatefulWidget {
  const Home2Screen({Key? key}) : super(key: key);

  @override
  _Home2ScreenState createState() => _Home2ScreenState();
}

class _Home2ScreenState extends State<Home2Screen> {
  final numInicial = TextEditingController();
  final numFinal = TextEditingController();
  String? result;

  List<Map<String, String>> listaParaMostrar = [];
  List<BotaoModel> botoes1 = [];

  @override
  void initState() {
    super.initState();
    http://minhaapi/dados<= get 200



    botoes1 = [
     BotaoModel(lane: 'top', controller: TextEditingController()),
     BotaoModel(lane: 'jungle', controller: TextEditingController()),
     BotaoModel(lane: 'mid', controller: TextEditingController()),
     BotaoModel(lane: 'adc', controller: TextEditingController()),
     BotaoModel(lane: 'sup', controller: TextEditingController()),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Manipulação de lista')),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey,
          ),
          height: 1000,
          width: 500,
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Cabeças de chaves'),
              Column(
                children: [
                  Container(
                    color: Colors.white,
                    child: const Column(
                      children: [
                        Text('Time1'),
                        Text('Jogador2'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: botoes1.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: CustomInputWidget(
                                controller: botoes1[index].controller,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: botoes1[index].enable? IconButton(
                                color: Colors.white,
                                onPressed: botoes1[index].enable?() {
                                  setState(() {
                                     botoes1[index].setEnable = false;
                                    listaParaMostrar.add({
                                      'lane': botoes1[index].lane,
                                      'nome':
                                          botoes1[index].controller.text,
                                    });
                                  });
                                }: null,
                                icon: const Icon(Icons.add),
                              ): IconButton(
                                color: Colors.white,
                                onPressed:() {
                                  setState(() {
                                     botoes1[index].setEnable = true;
                                    listaParaMostrar.removeWhere((element) => element['lane'] == botoes1[index].lane);
                                  });
                                },
                                icon: const Icon(Icons.remove),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  itemCount: listaParaMostrar.length,
                  itemBuilder: (context, index) {
                    return Text(listaParaMostrar[index]['nome']!);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
