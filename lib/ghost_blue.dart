import 'package:bonfire/bonfire.dart';
import 'ghost_blue_spritesheet.dart';
import 'ghost_orange_spritesheet.dart';
import 'dart:async' as async;

class GhostBlue extends SimpleEnemy with ObjectCollision, AutomaticRandomMovement {
  GhostBlue(Vector2 position) : super(
    position: position,
    size: Vector2(24, 24),
    speed: 100,
    life: 1000,
    animation: SimpleDirectionAnimation(
      idleLeft: GhostBlueSpriteSheet.idLeLeft,
      idleRight: GhostBlueSpriteSheet.idLeRight,
      runRight: GhostBlueSpriteSheet.runRight,
      runLeft: GhostBlueSpriteSheet.runLeft,
      idleUp: GhostBlueSpriteSheet.idLeUp,
      runUp: GhostBlueSpriteSheet.runUp,
      idleDown: GhostBlueSpriteSheet.idLeDown,
      runDown: GhostBlueSpriteSheet.runDown,
    ),
  ) {
    setupCollision(
      CollisionConfig(collisions: [
        CollisionArea.circle(
          radius: 12,
          align: Vector2(0, 0),
        ),
      ]),
    );
  }


  void initTime(async.Timer timer){
    if(init == 0){
      init  = 1;
    }
  }

  late int init = 0;
  late async.Timer verificaInit;
  @override
  void update(double dt) {
    verificaInit = async.Timer.periodic(const Duration(seconds: 1), initTime);
    enableCollision(true);

    if(init == 1) {
      seePlayer(
        observed: (player) {
          seeAndMoveToPlayer(
              closePlayer: (player) {

              },
              radiusVision: 200,
              margin: 0
          );
        },
        notObserved: () {
          runRandomMovement(
              dt,
              speed: 100,
              maxDistance: 1200,
              minDistance: 100,
              useAngle: false,
              timeKeepStopped: 0,
              runOnlyVisibleInCamera: true
          );
        },
        radiusVision: 200,
      );
    }
    super.update(dt);
  }

}
