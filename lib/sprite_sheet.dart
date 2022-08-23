import 'package:bonfire/bonfire.dart';

class PacManSpriteSheet {
  static Future<SpriteAnimation> pacsequenceImages(
    String fileName,
  ) {
    return SpriteAnimation.load(
      'pacman/$fileName',
      SpriteAnimationData.sequenced(
        amount: 6,
        stepTime: 0.1,
        textureSize: Vector2(32, 32),
        texturePosition: Vector2(0, 0),
      ),
    );
  }

  static Future<SpriteAnimation> get runRight =>
      pacsequenceImages('pac_man_right.png');
  static Future<SpriteAnimation> get runLeft =>
      pacsequenceImages('pac_man_left.png');
  static Future<SpriteAnimation> get runUp =>
      pacsequenceImages('pac_man_up.png');
  static Future<SpriteAnimation> get runDown =>
      pacsequenceImages('pac_man_down.png');
}
// ------------------------------------ enemy ------------------------------------//

class BlueSpriteSheet {
  static Future<SpriteAnimation> ghostsequenceImages(String fileName) {
    return SpriteAnimation.load(
      'ghosts/$fileName',
      SpriteAnimationData.sequenced(
        amount: 2,
        stepTime: 0.15,
        textureSize: Vector2(32, 32),
      ),
    );
  }

  static Future<SpriteAnimation> get runRight =>
      ghostsequenceImages('blue_right.png');
  static Future<SpriteAnimation> get runLeft =>
      ghostsequenceImages('blue_left.png');
  static Future<SpriteAnimation> get runUp =>
      ghostsequenceImages('blue_up.png');
  static Future<SpriteAnimation> get runDown =>
      ghostsequenceImages('blue_down.png');
}

class OrangeSpriteSheet {
  static Future<SpriteAnimation> ghostsequenceImages(String fileName) {
    return SpriteAnimation.load(
      'ghosts/$fileName',
      SpriteAnimationData.sequenced(
        amount: 2,
        stepTime: 0.15,
        textureSize: Vector2(32, 32),
      ),
    );
  }

  static Future<SpriteAnimation> get runRight =>
      ghostsequenceImages('orange_right.png');
  static Future<SpriteAnimation> get runLeft =>
      ghostsequenceImages('orange_left.png');
  static Future<SpriteAnimation> get runUp =>
      ghostsequenceImages('orange_up.png');
  static Future<SpriteAnimation> get runDown =>
      ghostsequenceImages('orange_down.png');
}

class PinkSpriteSheet {
  static Future<SpriteAnimation> ghostsequenceImages(String fileName) {
    return SpriteAnimation.load(
      'ghosts/$fileName',
      SpriteAnimationData.sequenced(
        amount: 2,
        stepTime: 0.15,
        textureSize: Vector2(32, 32),
      ),
    );
  }

  static Future<SpriteAnimation> get runRight =>
      ghostsequenceImages('pink_right.png');
  static Future<SpriteAnimation> get runLeft =>
      ghostsequenceImages('pink_left.png');
  static Future<SpriteAnimation> get runUp =>
      ghostsequenceImages('pink_up.png');
  static Future<SpriteAnimation> get runDown =>
      ghostsequenceImages('pink_down.png');
}

class RedSpriteSheet {
  static Future<SpriteAnimation> ghostsequenceImages(String fileName) {
    return SpriteAnimation.load(
      'ghosts/$fileName',
      SpriteAnimationData.sequenced(
        amount: 2,
        stepTime: 0.15,
        textureSize: Vector2(32, 32),
      ),
    );
  }

  static Future<SpriteAnimation> get runRight =>
      ghostsequenceImages('red_right.png');
  static Future<SpriteAnimation> get runLeft =>
      ghostsequenceImages('red_left.png');
  static Future<SpriteAnimation> get runUp => ghostsequenceImages('red_up.png');
  static Future<SpriteAnimation> get runDown =>
      ghostsequenceImages('red_down.png');
}
