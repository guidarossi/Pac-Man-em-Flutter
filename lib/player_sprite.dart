import 'package:bonfire/bonfire.dart';

class PlayerSpriteSheet{

  
  static get idLeRight => SpriteAnimation.load(
      'pacman-right.png',
      SpriteAnimationData.sequenced(
        amount: 5,
        stepTime: 0.1,
        textureSize: Vector2(32,32),
      ),
  );

  static get idLeLeft => SpriteAnimation.load(
    'pacman-left.png',
    SpriteAnimationData.sequenced(
      amount: 5,
      stepTime: 0.1,
      textureSize: Vector2(32,32),
    ),
  );

  static get idLeUp => SpriteAnimation.load(
    'pacman-up-teste.png',
    SpriteAnimationData.sequenced(
      amount: 5,
      stepTime: 0.1,
      textureSize: Vector2(32,32),
    ),
  );

  static get idLeDown => SpriteAnimation.load(
    'pacman-down.png',
    SpriteAnimationData.sequenced(
      amount: 5,
      stepTime: 0.1,
      textureSize: Vector2(32,32),
    ),
  );

  static get runUp => SpriteAnimation.load(
    'pacman-up-teste.png',
    SpriteAnimationData.sequenced(
      amount: 5,
      stepTime: 0.1,
      textureSize: Vector2(32,32),
    ),
  );

  static get runRight => SpriteAnimation.load(
    'pacman-right.png',
    SpriteAnimationData.sequenced(
      amount: 5,
      stepTime: 0.1,
      textureSize: Vector2(32,32),
    ),
  );

  static get runLeft => SpriteAnimation.load(
    'pacman-left.png',
    SpriteAnimationData.sequenced(
      amount: 5,
      stepTime: 0.1,
      textureSize: Vector2(32,32),
    ),
  );

  static get runDown => SpriteAnimation.load(
    'pacman-down.png',
    SpriteAnimationData.sequenced(
      amount: 5,
      stepTime: 0.1,
      textureSize: Vector2(32,32),
    ),
  );
}