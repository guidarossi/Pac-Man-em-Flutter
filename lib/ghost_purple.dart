import 'package:bonfire/bonfire.dart';
import 'ghost_orange_spritesheet.dart';
import 'dart:async' as async;

import 'ghost_purple_spritesheet.dart';

class GhostPurple extends SimpleEnemy with ObjectCollision, AutomaticRandomMovement{
  GhostPurple(Vector2 position) : super(
    position: position,
    size: Vector2(24, 24),
    speed: 100,
    life: 1000,

    animation: SimpleDirectionAnimation(
      idleLeft: GhostPurpleSpriteSheet.idLeLeft,
      idleRight: GhostPurpleSpriteSheet.idLeRight,
      runRight: GhostPurpleSpriteSheet.runRight,
      runLeft: GhostPurpleSpriteSheet.runLeft,
      idleUp: GhostPurpleSpriteSheet.idLeUp,
      runUp: GhostPurpleSpriteSheet.runUp,
      idleDown: GhostPurpleSpriteSheet.idLeDown,
      runDown: GhostPurpleSpriteSheet.runDown,
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
              maxDistance: 800,
              minDistance: 300,
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