import 'package:flutter/material.dart';
import 'package:game_king/view/game_players_view.dart';

import '../model/player.dart';

class ScoreBoardPage extends StatefulWidget {
  const ScoreBoardPage({super.key});

  @override
  State<ScoreBoardPage> createState() => _ScoreBoardPageState();
}

class _ScoreBoardPageState extends State<ScoreBoardPage> {
  List<Player> players = [];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GamePlayersView(players: players)
        ],
      ),
    );
  }
}
