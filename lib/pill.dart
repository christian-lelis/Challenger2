import 'package:bonfire/bonfire.dart';

class PowerPillSprite {
  static Future<SpriteAnimation> powerPill(String fileName) {
    return SpriteAnimation.load(
      'pill/$fileName',
      SpriteAnimationData.sequenced(
        amount: 1,
        stepTime: 0.15,
        textureSize: Vector2(32, 32),
      ),
    );
  }

  static Future<SpriteAnimation> get idleDown => powerPill('power_pill.png');
}

class PowerPill extends SimpleEnemy with ObjectCollision {
  PowerPill({
    required Vector2 position,
  }) : super(
          position: position,
          size: Vector2(30, 30),
          life: 10,
          animation: SimpleDirectionAnimation(
              idleRight: PowerPillSprite.idleDown,
              runRight: PowerPillSprite.idleDown),
        ) {
    // setupCollision(
    //   CollisionConfig(
    //     collisions: [
    //       CollisionArea.circle(radius: 7, align: Vector2(8, 8)),
    //     ],
    //   ),
    // );
  }
}
