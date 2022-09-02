

import 'package:bonfire/bonfire.dart';

class GhostRedSpriteSheet {


  static get idLeRight => SpriteAnimation.load(
    'ghost-red-right.png',
    SpriteAnimationData.sequenced(
      amount: 4,
      stepTime: 0.1,
      textureSize: Vector2(32,32),
    ),
  );

  static get idLeLeft => SpriteAnimation.load(
    'ghost-red-left.png',
    SpriteAnimationData.sequenced(
      amount: 4,
      stepTime: 0.1,
      textureSize: Vector2(32,32),
    ),
  );

  static get idLeUp => SpriteAnimation.load(
    'ghost-red-up.png',
    SpriteAnimationData.sequenced(
      amount: 4,
      stepTime: 0.1,
      textureSize: Vector2(32,32),
    ),
  );

  static get idLeDown => SpriteAnimation.load(
    'ghost-red-down.png',
    SpriteAnimationData.sequenced(
      amount: 4,
      stepTime: 0.1,
      textureSize: Vector2(32,32),
    ),
  );

  static get runUp => SpriteAnimation.load(
    'ghost-red-up.png',
    SpriteAnimationData.sequenced(
      amount: 4,
      stepTime: 0.1,
      textureSize: Vector2(32,32),
    ),
  );

  static get runRight => SpriteAnimation.load(
    'ghost-red-right.png',
    SpriteAnimationData.sequenced(
      amount: 4,
      stepTime: 0.1,
      textureSize: Vector2(32,32),
    ),
  );

  static get runLeft => SpriteAnimation.load(
    'ghost-red-left.png',
    SpriteAnimationData.sequenced(
      amount: 4,
      stepTime: 0.1,
      textureSize: Vector2(32,32),
    ),
  );

  static get runDown => SpriteAnimation.load(
    'ghost-red-down.png',
    SpriteAnimationData.sequenced(
      amount: 4,
      stepTime: 0.1,
      textureSize: Vector2(32,32),
    ),
  );
}