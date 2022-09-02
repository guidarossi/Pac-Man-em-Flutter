import 'package:bonfire/bonfire.dart';
import 'package:test_game_escribo/ghost_blue.dart';
import 'package:test_game_escribo/ghost_orange.dart';
import 'package:test_game_escribo/ghost_purple.dart';
import 'package:test_game_escribo/ghost_red.dart';
import 'package:test_game_escribo/player_sprite.dart';

double vida = 0.1;

class PacMan extends SimplePlayer with ObjectCollision {

  PacMan(Vector2 position)
      : super(
    position: Vector2(20, 35),
    size: position,
    speed: 160,
    life: vida,
    animation: SimpleDirectionAnimation(
      idleLeft: PlayerSpriteSheet.idLeLeft,
      idleRight: PlayerSpriteSheet.idLeRight,
      runRight: PlayerSpriteSheet.runRight,
      runLeft: PlayerSpriteSheet.runLeft,
      idleUp: PlayerSpriteSheet.idLeUp,
      runUp: PlayerSpriteSheet.runUp,
      idleDown: PlayerSpriteSheet.idLeDown,
      runDown: PlayerSpriteSheet.runDown,
    ),
  )
  {

    setupCollision(
      CollisionConfig(
          enable: true,

          collisions: [
        CollisionArea.circle(
            radius: 12,
            align: Vector2(1, 2)
        ),

      ]),
    );

}

  @override
  bool onCollision(GameComponent component, bool active) {

    if (component is TileWithCollision) {

      } else if(component is GhostOrange || component is GhostPurple || component is GhostBlue || component is GhostRed){
      die();
    }

    return super.onCollision(component, active);
  }

  @override
  void update(double dt) {

    super.update(dt);
  }

  @override
  void die() {
    gameRef.camera.animateZoom(zoom: 2.5 * 1.0);
    if(lastDirectionHorizontal == Direction.left) {
      animation?.playOnce(PlayerSpriteSheet.reciveDamage, runToTheEnd: true,
          onFinish: (){
            removeFromParent();
            gameRef.camera.animateZoom(zoom: 1.2 * 1);
          }
      );
    } else {
      animation?.playOnce(PlayerSpriteSheet.reciveDamage, runToTheEnd: true,
          onFinish: (){
            removeFromParent();
            gameRef.camera.animateZoom(zoom: 1.2 * 1);
          }
      );
    }
    super.die();
 }

}
