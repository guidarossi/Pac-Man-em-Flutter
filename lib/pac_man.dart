import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:test_game_escribo/player_sprite.dart';
import 'package:test_game_escribo/pont.dart';

class PacMan extends SimplePlayer with ObjectCollision {

  PacMan(Vector2 postion)
      : super(
    position: postion,
    size: postion,
    speed: 160,
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
      CollisionConfig(collisions: [
        CollisionArea.circle(
            radius: 8,
            align: Vector2(3, 2)
        ),

      ]),
    );
}

  @override
  void update(double dt) {

    super.update(dt);
  }

  void _executeAttack() {

    simpleAttackMelee(damage: 100, size: Vector2(0, 0));
  }
  @override
  void die() {
    removeFromParent();
    super.die();
}
}