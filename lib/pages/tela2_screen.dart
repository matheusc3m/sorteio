import 'dart:math';

import 'package:flutter/material.dart';

class Tela2Screen extends StatefulWidget {

  final int numero;
  const Tela2Screen({super.key,required this.numero});

  @override
  State<Tela2Screen> createState() => _Tela2ScreenState();
}

class _Tela2ScreenState extends State<Tela2Screen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sorteio')),
      body: Column(
        children: [
          Text(widget.numero.toString())
        ],
      ),
    );
  }
}
