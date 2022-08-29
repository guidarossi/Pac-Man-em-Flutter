


import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'dart:async' as async;

import 'package:test_game_escribo/main.dart';

int pontuacao = 0;

class PlayerPontuacao extends StatefulWidget {

  static const overlaykay = 'playerPontuacao';

  final BonfireGame game;
  const PlayerPontuacao({Key? key, required this.game}) : super(key: key);

  @override
  State<PlayerPontuacao> createState() => _PlayerPontuacaoState();
}

class _PlayerPontuacaoState extends State<PlayerPontuacao> {

  late async.Timer _pontuacao;
  @override
  void initState() {


    _pontuacao = async.Timer.periodic(const Duration(milliseconds: 100), _verificaPontos);
    super.initState();
  }

  @override
  void dispose() {
    _pontuacao.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return
      Material(
        type: MaterialType.transparency,
        child:
      Container(
        child:
    Text("Pontuação: $pontuacao",
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(fontWeight: FontWeight.bold,
      color: Colors.blue,
        wordSpacing: 10
      ),
    )));
  }

  void _verificaPontos(async.Timer timer){

    if(pontuacao.sign != pontuacao){
      setState(() {
        pontuacao = pontuacao;
      });
    }
  }
}


