import 'package:bonfire/bonfire.dart';
import 'package:test_game_escribo/player_pontuacao.dart';
import 'package:test_game_escribo/pont_sprite.dart';

class Pont extends SimpleEnemy {
  Pont(Vector2 position) : super(
    position: position,
    size: Vector2(8, 24),
    life: 1,
    animation: SimpleDirectionAnimation(
      idleRight: PontSpriteSheet.idLeRight,
      runRight: PontSpriteSheet.runRight,
    ),
  );

  @override
  void die() {
    pontuacao += 10;
    removeFromParent();
    super.die();
  }
}