

import 'package:bonfire/bonfire.dart';

class GhostBlueSpriteSheet {


  static get idLeRight => SpriteAnimation.load(
    'ghost-blue-right.png',
    SpriteAnimationData.sequenced(
      amount: 4,
      stepTime: 0.1,
      textureSize: Vector2(32,32),
    ),
  );

  static get idLeLeft => SpriteAnimation.load(
    'ghost-blue-left.png',
    SpriteAnimationData.sequenced(
      amount: 4,
      stepTime: 0.1,
      textureSize: Vector2(32,32),
    ),
  );

  static get idLeUp => SpriteAnimation.load(
    'ghost-blue-up.png',
    SpriteAnimationData.sequenced(
      amount: 4,
      stepTime: 0.1,
      textureSize: Vector2(32,32),
    ),
  );

  static get idLeDown => SpriteAnimation.load(
    'ghost-blue-down.png',
    SpriteAnimationData.sequenced(
      amount: 4,
      stepTime: 0.1,
      textureSize: Vector2(32,32),
    ),
  );

  static get runUp => SpriteAnimation.load(
    'ghost-blue-up.png',
    SpriteAnimationData.sequenced(
      amount: 4,
      stepTime: 0.1,
      textureSize: Vector2(32,32),
    ),
  );

  static get runRight => SpriteAnimation.load(
    'ghost-blue-right.png',
    SpriteAnimationData.sequenced(
      amount: 4,
      stepTime: 0.1,
      textureSize: Vector2(32,32),
    ),
  );

  static get runLeft => SpriteAnimation.load(
    'ghost-blue-left.png',
    SpriteAnimationData.sequenced(
      amount: 4,
      stepTime: 0.1,
      textureSize: Vector2(32,32),
    ),
  );

  static get runDown => SpriteAnimation.load(
    'ghost-blue-down.png',
    SpriteAnimationData.sequenced(
      amount: 4,
      stepTime: 0.1,
      textureSize: Vector2(32,32),
    ),
  );
}