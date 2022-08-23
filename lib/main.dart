import 'dart:math';

import 'package:bonfire/bonfire.dart';
import 'package:challenger_2/pacman.dart';
import 'package:challenger_2/pill.dart';
import 'package:flutter/material.dart';
import 'ghosts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BonfireTiledWidget(
      joystick: Joystick(
          keyboardConfig: KeyboardConfig(
              keyboardDirectionalType: KeyboardDirectionalType.wasdAndArrows),
          directional: JoystickDirectional()),
      map: TiledWorldMap('map/map.tmj'),
      //showCollisionArea: true,
      player: PacMan(),
      cameraConfig: CameraConfig(
          moveOnlyMapArea: true,
          zoom: 1.3,
          smoothCameraEnabled: true,
          smoothCameraSpeed: 2),
      components: [
        PowerPill(position: Vector2(32 * 5, 32 * 19)),
        PowerPill(position: Vector2(32 * 10, 32 * 22)),
        PowerPill(position: Vector2(32 * 11, 32 * 17)),
        PowerPill(position: Vector2(32 * 0, 32 * 16)),
        PowerPill(position: Vector2(32 * 0, 32 * 10)),
        PowerPill(position: Vector2(32 * 1, 32 * 1)),
        PowerPill(position: Vector2(32 * 3, 32 * 5)),
        PowerPill(position: Vector2(32 * 8, 32 * 7)),
        PowerPill(position: Vector2(32 * 9, 32 * 13)),
        PowerPill(position: Vector2(32 * 11, 32 * 3)),
        PowerPill(position: Vector2(32 * 6, 32 * 1)),
        GhostOrange(position: Vector2(32 * 5, 32 * 7)),
        GhostPink(position: Vector2(32 * 5, 32 * 8)),
        GhostRed(position: Vector2(32 * 6, 32 * 7)),
        GhostBlue(position: Vector2(32 * 6, 32 * 8))
      ],
    );
  }
}
