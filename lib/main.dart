import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_game_escribo/ghost_orange.dart';
import 'package:test_game_escribo/pac_man.dart';
import 'package:test_game_escribo/pont.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Escribo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const Game(),
    );
  }
}

class Game extends StatelessWidget {
  const Game({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
    return SafeArea(child: BonfireTiledWidget(
      joystick: Joystick(
        directional: JoystickDirectional(),
      ),
      map: TiledWorldMap('mapPacMan.json',
      objectsBuilder: {
        'ghost0':(properties)=>GhostOrange(properties.position),
        'ghost1':(properties)=>GhostOrange(properties.position),
        'ghost2':(properties)=>GhostOrange(properties.position),
        'ghost3':(properties)=>GhostOrange(properties.position),

        'points':(properties)=>Pont(properties.position),
      }

      //forceTileSize: const Size(14, 15),
      ),
      player: PacMan(Vector2(3*8, 3*8)),
      cameraConfig: CameraConfig(
        moveOnlyMapArea: true,
        //zoom: 2,
      ),
      //showCollisionArea: true,
    ),
    );
  }
}
