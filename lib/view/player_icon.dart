import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../model/player.dart';

class PlayerIcon extends StatelessWidget {
  PlayerIcon({super.key, required this.player});
  Player player;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: player.signatureColor, shape: BoxShape.circle),
          child: Text(tex),
    );
  }
}
