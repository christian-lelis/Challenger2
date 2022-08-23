import 'package:bonfire/bonfire.dart';
import 'package:challenger_2/pacman.dart';
import 'package:challenger_2/sprite_sheet.dart';
import 'package:flutter/animation.dart';

const double ghostCali = 5;
const double ghostCsiz = 22;

class GhostOrange extends SimpleEnemy with ObjectCollision {
  GhostOrange({
    required Vector2 position,
  }) : super(
          position: position,
          size: Vector2(32, 32),
          speed: 80,
          life: 10,
          animation: SimpleDirectionAnimation(
              idleUp: OrangeSpriteSheet.runUp,
              runUp: OrangeSpriteSheet.runUp,
              idleDown: OrangeSpriteSheet.runDown,
              runDown: OrangeSpriteSheet.runDown,
              idleRight: OrangeSpriteSheet.runRight,
              runRight: OrangeSpriteSheet.runRight,
              idleLeft: OrangeSpriteSheet.runLeft,
              runLeft: OrangeSpriteSheet.runLeft),
        ) {
    setupCollision(
      CollisionConfig(
        collisions: [
          CollisionArea.rectangle(
              size: Vector2(ghostCsiz, ghostCsiz),
              align: Vector2(ghostCali, ghostCali)),
        ],
      ),
    );
  }
  @override
  void update(double dt) {
    seeAndMoveToPlayer(
        closePlayer: (player) {
          simpleAttackMelee(
              damage: 15,
              size: Vector2(30, 30),
              direction: lastDirection,
              withPush: true);
        },
        radiusVision: 32 * 5);
    super.update(dt);
  }
}

class GhostBlue extends SimpleEnemy with ObjectCollision {
  GhostBlue({
    required Vector2 position,
  }) : super(
          position: position,
          size: Vector2(32, 32),
          speed: 80,
          life: 10,
          animation: SimpleDirectionAnimation(
              idleUp: BlueSpriteSheet.runUp,
              runUp: BlueSpriteSheet.runUp,
              idleDown: BlueSpriteSheet.runDown,
              runDown: BlueSpriteSheet.runDown,
              idleRight: BlueSpriteSheet.runRight,
              runRight: BlueSpriteSheet.runRight,
              idleLeft: BlueSpriteSheet.runLeft,
              runLeft: BlueSpriteSheet.runLeft),
        ) {
    setupCollision(
      CollisionConfig(
        collisions: [
          CollisionArea.rectangle(
              size: Vector2(ghostCsiz, ghostCsiz),
              align: Vector2(ghostCali, ghostCali)),
        ],
      ),
    );
  }
  @override
  void update(double dt) {
    seeAndMoveToPlayer(
        closePlayer: (player) {
          simpleAttackMelee(
              damage: 15,
              size: Vector2(30, 30),
              direction: lastDirection,
              withPush: true);
        },
        radiusVision: 32 * 5);
    super.update(dt);
  }
}

class GhostPink extends SimpleEnemy with ObjectCollision {
  GhostPink({
    required Vector2 position,
  }) : super(
          position: position,
          size: Vector2(32, 32),
          speed: 80,
          life: 10,
          animation: SimpleDirectionAnimation(
              idleUp: PinkSpriteSheet.runUp,
              runUp: PinkSpriteSheet.runUp,
              idleDown: PinkSpriteSheet.runDown,
              runDown: PinkSpriteSheet.runDown,
              idleRight: PinkSpriteSheet.runRight,
              runRight: PinkSpriteSheet.runRight,
              idleLeft: PinkSpriteSheet.runLeft,
              runLeft: PinkSpriteSheet.runLeft),
        ) {
    setupCollision(
      CollisionConfig(
        collisions: [
          CollisionArea.rectangle(
              size: Vector2(ghostCsiz, ghostCsiz),
              align: Vector2(ghostCali, ghostCali)),
        ],
      ),
    );
  }
  @override
  void update(double dt) {
    seeAndMoveToPlayer(
        closePlayer: (player) {
          simpleAttackMelee(
              damage: 15,
              size: Vector2(30, 30),
              direction: lastDirection,
              withPush: true);
        },
        radiusVision: 32 * 5);
    super.update(dt);
  }
}

class GhostRed extends SimpleEnemy with ObjectCollision {
  GhostRed({
    required Vector2 position,
  }) : super(
          position: position,
          size: Vector2(32, 32),
          speed: 80,
          life: 10,
          animation: SimpleDirectionAnimation(
              idleUp: RedSpriteSheet.runUp,
              runUp: RedSpriteSheet.runUp,
              idleDown: RedSpriteSheet.runDown,
              runDown: RedSpriteSheet.runDown,
              idleRight: RedSpriteSheet.runRight,
              runRight: RedSpriteSheet.runRight,
              idleLeft: RedSpriteSheet.runLeft,
              runLeft: RedSpriteSheet.runLeft),
        ) {
    setupCollision(
      CollisionConfig(
        collisions: [
          CollisionArea.rectangle(
              size: Vector2(ghostCsiz, ghostCsiz),
              align: Vector2(ghostCali, ghostCali)),
        ],
      ),
    );
  }
  @override
  void update(double dt) {
    seeAndMoveToPlayer(
        closePlayer: (player) {
          simpleAttackMelee(
            damage: 15,
            size: Vector2(30, 30),
            direction: lastDirection,
          );
          //HasCollisionDetection
        },
        radiusVision: 32 * 5);
    super.update(dt);
  }
}
