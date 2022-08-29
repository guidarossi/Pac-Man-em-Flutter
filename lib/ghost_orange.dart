

import 'dart:ui';

import 'package:bonfire/bonfire.dart';

import 'ghost_orange_spritesheet.dart';

class GhostOrange extends SimpleEnemy with ObjectCollision {
  GhostOrange(Vector2 position) : super(
    position: position,
    size: Vector2(24, 24),
    speed: 80,
    life: 1000,
    animation: SimpleDirectionAnimation(
      idleLeft: GhostOrangeSpriteSheet.idLeLeft,
      idleRight: GhostOrangeSpriteSheet.idLeRight,
      runRight: GhostOrangeSpriteSheet.runRight,
      runLeft: GhostOrangeSpriteSheet.runLeft,
      idleUp: GhostOrangeSpriteSheet.idLeUp,
      runUp: GhostOrangeSpriteSheet.runUp,
      idleDown: GhostOrangeSpriteSheet.idLeDown,
      runDown: GhostOrangeSpriteSheet.runDown,
    ),
  )
  {
    setupCollision(
      CollisionConfig(collisions: [
        CollisionArea.circle(
            radius: 8,
            align: Vector2(4, 3)
        ),

      ]),
    );
  }

  @override
  void update(double dt) {

    seeAndMoveToPlayer(
        closePlayer: (player) {
          _executeAttack();
        },
        radiusVision: 400,
        margin: 0
    );
    super.update(dt);
  }
  
  void _executeAttack() {

    simpleAttackMelee(damage: 100, size: Vector2(0, 0));
  }

}