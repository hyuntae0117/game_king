import 'package:flutter/material.dart';
import '../model/player.dart';

class PlayerIconView extends StatelessWidget {
  const PlayerIconView({super.key, required this.player});
  final Player player;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration:
          BoxDecoration(color: player.signatureColor, shape: BoxShape.circle),
      child: Center(child: Text(player.name)),
    );
  }
}
