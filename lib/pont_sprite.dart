

import 'package:bonfire/bonfire.dart';

class PontSpriteSheet {


  static get idLeRight => SpriteAnimation.load(
    'points-teste.png',
    SpriteAnimationData.sequenced(
      amount: 2,
      stepTime: 0.3,
      textureSize: Vector2(8,32),
    ),
  );

  static get runRight => SpriteAnimation.load(
    'points-teste.png',
    SpriteAnimationData.sequenced(
      amount: 2,
      stepTime: 0.3,
      textureSize: Vector2(8,32),
    ),
  );

}