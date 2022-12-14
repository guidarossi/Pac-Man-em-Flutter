

import 'package:bonfire/bonfire.dart';

class GhostOrangeSpriteSheet {


  static get idLeRight => SpriteAnimation.load(
    'ghost-orange-right.png',
    SpriteAnimationData.sequenced(
      amount: 4,
      stepTime: 0.1,
      textureSize: Vector2(32,32),
    ),
  );

  static get idLeLeft => SpriteAnimation.load(
    'ghost-orange-left.png',
    SpriteAnimationData.sequenced(
      amount: 4,
      stepTime: 0.1,
      textureSize: Vector2(32,32),
    ),
  );

  static get idLeUp => SpriteAnimation.load(
    'ghost-orange-up.png',
    SpriteAnimationData.sequenced(
      amount: 4,
      stepTime: 0.1,
      textureSize: Vector2(32,32),
    ),
  );

  static get idLeDown => SpriteAnimation.load(
    'ghost-orange-down.png',
    SpriteAnimationData.sequenced(
      amount: 4,
      stepTime: 0.1,
      textureSize: Vector2(32,32),
    ),
  );

  static get runUp => SpriteAnimation.load(
    'ghost-orange-up.png',
    SpriteAnimationData.sequenced(
      amount: 4,
      stepTime: 0.1,
      textureSize: Vector2(32,32),
    ),
  );

  static get runRight => SpriteAnimation.load(
    'ghost-orange-right.png',
    SpriteAnimationData.sequenced(
      amount: 4,
      stepTime: 0.1,
      textureSize: Vector2(32,32),
    ),
  );

  static get runLeft => SpriteAnimation.load(
    'ghost-orange-left.png',
    SpriteAnimationData.sequenced(
      amount: 4,
      stepTime: 0.1,
      textureSize: Vector2(32,32),
    ),
  );

  static get runDown => SpriteAnimation.load(
    'ghost-orange-down.png',
    SpriteAnimationData.sequenced(
      amount: 4,
      stepTime: 0.1,
      textureSize: Vector2(32,32),
    ),
  );
}