

import 'package:bonfire/bonfire.dart';

class GhostPurpleSpriteSheet {


  static get idLeRight => SpriteAnimation.load(
    'ghost-purple-right.png',
    SpriteAnimationData.sequenced(
      amount: 4,
      stepTime: 0.1,
      textureSize: Vector2(32,32),
    ),
  );

  static get idLeLeft => SpriteAnimation.load(
    'ghost-purple-left.png',
    SpriteAnimationData.sequenced(
      amount: 4,
      stepTime: 0.1,
      textureSize: Vector2(32,32),
    ),
  );

  static get idLeUp => SpriteAnimation.load(
    'ghost-purple-up.png',
    SpriteAnimationData.sequenced(
      amount: 4,
      stepTime: 0.1,
      textureSize: Vector2(32,32),
    ),
  );

  static get idLeDown => SpriteAnimation.load(
    'ghost-purple-down.png',
    SpriteAnimationData.sequenced(
      amount: 4,
      stepTime: 0.1,
      textureSize: Vector2(32,32),
    ),
  );

  static get runUp => SpriteAnimation.load(
    'ghost-purple-up.png',
    SpriteAnimationData.sequenced(
      amount: 4,
      stepTime: 0.1,
      textureSize: Vector2(32,32),
    ),
  );

  static get runRight => SpriteAnimation.load(
    'ghost-purple-right.png',
    SpriteAnimationData.sequenced(
      amount: 4,
      stepTime: 0.1,
      textureSize: Vector2(32,32),
    ),
  );

  static get runLeft => SpriteAnimation.load(
    'ghost-purple-left.png',
    SpriteAnimationData.sequenced(
      amount: 4,
      stepTime: 0.1,
      textureSize: Vector2(32,32),
    ),
  );

  static get runDown => SpriteAnimation.load(
    'ghost-purple-down.png',
    SpriteAnimationData.sequenced(
      amount: 4,
      stepTime: 0.1,
      textureSize: Vector2(32,32),
    ),
  );
}