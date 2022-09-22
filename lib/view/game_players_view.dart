import 'package:flutter/cupertino.dart';
import 'package:game_king/view/player_icon_view.dart';

import '../model/player.dart';

class GamePlayersView extends StatelessWidget {
  final List<Player> players;
  const GamePlayersView({super.key, required this.players});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      physics: const AlwaysScrollableScrollPhysics(),
      children:
          players.map((player) => PlayerIconView(player: player)).toList(),
    );
  }
}
