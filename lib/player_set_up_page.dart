import 'package:flutter/material.dart';
import 'package:game_king/model/game_score.dart';
import 'package:game_king/view/game_players_view.dart';
import 'package:game_king/view/round_table_view.dart';

import 'model/player.dart';

class PlayerSetUpPage extends StatefulWidget {
  const PlayerSetUpPage({super.key});

  @override
  State<PlayerSetUpPage> createState() => _PlayerSetUpPageState();
}

class _PlayerSetUpPageState extends State<PlayerSetUpPage> {
  final nameController = TextEditingController();
  List<Player> players = [];

  GameScore gameScore = GameScore([]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text("Player를 추가해주세요"),
          TextField(
            controller: nameController,
            onChanged: (text) {
              setState(() {});
            },
          ),
          TextButton(
              onPressed:
                  nameController.text.isValidName() ? _addButtonPressed : null,
              child: const Text("추가")),
          Container(
              height: 80,
              decoration: const BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: GamePlayersView(
                players: players,
              )),
          RoundTableView(gameScores: GameScore(players)),
        ],
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  void _addButtonPressed() {
    print(nameController.text);
    var name = nameController.text;
    if (name.isValidName() == false) {
      print("옳은 이름을 입력해주세요");
    }

    setState(() {
      players.add(Player(nameController.text));
    });
    nameController.text = "";
  }

  _startButtonPressed() {}
}

extension Name on String {
  bool isValidName() {
    return isNotEmpty;
  }
}
