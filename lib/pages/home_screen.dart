import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sorteio/components/custom_input_widget.dart';
import 'package:sorteio/pages/tela2_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final numInicial = TextEditingController();
  final numFinal = TextEditingController();
  String? result;

  List lista1 = [];
  List lista2 = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sorteio')),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey,
         
          ),
          height: 180,
          width: 500,
        
          padding: EdgeInsets.all(20),
          child: Expanded(
            child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Expanded(
                      child: CustomInputWidget(
                        title: 'Número Inicial',
                        controller: numInicial,
                      ),
                    )),
                    // ignore: prefer_const_constructors
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: CustomInputWidget(
                        title: 'Número Final',
                        controller: numFinal,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),

                SizedBox(
                  height: 50,
                  child: InkWell(
                      onTap:() {
                      var rng = Random();
                      setState(() {
                        final numero = (rng.nextInt(int.parse(numFinal.text)) +
                            int.parse(numInicial.text));
                    
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => Tela2Screen(numero: numero)));
                      });
                    },
                      child: Container(
                        decoration: BoxDecoration(
                          color:
                             Colors.green,
                         
                        ),
                        alignment: Alignment.center,
                        child:  Text(
                    'Enviar',
                    style: 
                        TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                  ),
                            
                               
                      ),
                    ),
                ),
              
                if (result != null) Text(result!)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
