import 'package:bonfire/bonfire.dart';
import 'ghost_orange_spritesheet.dart';
import 'dart:async' as async;

import 'ghost_red_spritesheet.dart';

class GhostRed extends SimpleEnemy with ObjectCollision, AutomaticRandomMovement{
  GhostRed(Vector2 position) : super(
    position: position,
    size: Vector2(24, 24),
    speed: 100,
    life: 1000,
    animation: SimpleDirectionAnimation(
      idleLeft: GhostRedSpriteSheet.idLeLeft,
      idleRight: GhostRedSpriteSheet.idLeRight,
      runRight: GhostRedSpriteSheet.runRight,
      runLeft: GhostRedSpriteSheet.runLeft,
      idleUp: GhostRedSpriteSheet.idLeUp,
      runUp: GhostRedSpriteSheet.runUp,
      idleDown: GhostRedSpriteSheet.idLeDown,
      runDown: GhostRedSpriteSheet.runDown,
    ),
  )
  {
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
              maxDistance: 4000,
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