import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'dart:async' as async;

import 'package:test_game_escribo/pac_man.dart';


class PlayerPontuacao extends StatefulWidget {

  static const overlaykay = 'playerPontuacao';

  final BonfireGame game;
  const PlayerPontuacao({Key? key, required this.game}) : super(key: key);

  @override
  State<PlayerPontuacao> createState() => _PlayerPontuacaoState();
}

class _PlayerPontuacaoState extends State<PlayerPontuacao> {

  late int _fps = FpsComponent().windowSize;
  late async.Timer _pontuacao;
  @override
  void initState() {

    _fps;
    _pontuacao = async.Timer.periodic(const Duration(milliseconds: 100), _verificaPontos);
    super.initState();
  }

  @override
  void dispose() {

    _fps;
    _pontuacao.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return
      Material(
        type: MaterialType.transparency,
        child:
      Text("Pontuação: ${vida.toInt()}",
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(fontWeight: FontWeight.bold,
        color: Colors.blue,
          wordSpacing: 10
        ),
      ));
  }

  void _verificaPontos(async.Timer timer){
    
    if(vida.sign != vida){
      setState(() {
        _fps = _fps;
        vida = vida;
      });
    }
  }
}


