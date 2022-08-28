


import 'package:bonfire/bonfire.dart';
import 'package:test_game_escribo/pac_man.dart';

import 'package:test_game_escribo/pont_sprite.dart';

class Pont extends SimpleEnemy with Sensor {
  Pont(Vector2 position) : super(
    position: position,
    size: Vector2(8, 24),

    animation: SimpleDirectionAnimation(
      idleRight: PontSpriteSheet.idLeRight,
      runRight: PontSpriteSheet.runRight,
    ),


  )
  {

  // call this method to configure sensor area.
  setupSensorArea(

  areaSensor: [
  CollisionArea.rectangle(
  size: Vector2(32,32),
  ),
  ]
  );
}

  @override
  void onContact(GameComponent component) {

  }
  @override
  void die() {
    removeFromParent();
    super.die();
  }

  @override
  void onContactExit(GameComponent component) {

      die();

  }

}