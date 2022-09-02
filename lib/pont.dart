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
  );

  @override
  void onContact(GameComponent component) {
    if(component is PacMan){
      vida += 10;
      removeFromParent();
    }
  }

  @override
  void onContactExit(GameComponent component) {
    // TODO: implement onContactExit
  }
}