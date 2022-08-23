import 'package:bonfire/bonfire.dart';
import 'package:challenger_2/sprite_sheet.dart';

class PacMan extends SimplePlayer with ObjectCollision {
  PacMan()
      : super(
          position: Vector2(32 * 5, 32 * 21),
          size: Vector2(30, 30),
          speed: 100,
          animation: SimpleDirectionAnimation(
              idleUp: PacManSpriteSheet.runUp,
              runUp: PacManSpriteSheet.runUp,
              idleDown: PacManSpriteSheet.runDown,
              runDown: PacManSpriteSheet.runDown,
              idleRight: PacManSpriteSheet.runRight,
              runRight: PacManSpriteSheet.runRight,
              idleLeft: PacManSpriteSheet.runLeft,
              runLeft: PacManSpriteSheet.runLeft),
        ) {
    setupCollision(
      CollisionConfig(
        collisions: [
          CollisionArea.circle(
            radius: (11),
            align: Vector2(4, 3),
          ),
        ],
      ),
    );
  }
}
