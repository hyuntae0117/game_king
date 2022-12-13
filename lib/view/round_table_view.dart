import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:game_king/view/player_icon_view.dart';
import '../model/game_score.dart';
import '../model/player.dart';

class RoundTableView extends StatefulWidget {
  const RoundTableView({super.key, required this.gameScores});

  final GameScore gameScores;

  @override
  State<RoundTableView> createState() => _RoundTableViewState();
}

class _RoundTableViewState extends State<RoundTableView> {
  @override
  Widget build(BuildContext context) {
    Map<Player, TextEditingController> playerScores = {};

    return Column(
      children: [
        TextButton(
            onPressed: () {
              setState(() {
                _onAddRoundButtonClicked(playerScores);
              });
            },
            child: Text("입력 완료! 라운드 추가")),
        Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            child: Column(
                children: widget.gameScores.players
                    .map((e) => SizedBox(
                        width: 70,
                        height: 70,
                        child: Center(child: PlayerIconView(player: e))))
                    .toList()),
          ),
          Container(
            child: Column(
                children: widget.gameScores.players
                    .map((e) =>
                        Cell(widget.gameScores.getTotalScore(e).toString()))
                    .toList()),
          ),
          Expanded(
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: widget.gameScores.roundScores.reversed
                        .map((round) => Column(
                            children: widget.gameScores.players
                                .map((player) =>
                                    _getScoreCell(round, player, playerScores))
                                .toList()))
                        .toList(),
                  ))),
        ]),
      ],
    );
  }

  Widget _getScoreCell(Round round, Player player,
      Map<Player, TextEditingController> playerScores) {
    if (widget.gameScores.currentRound == round) {
      TextEditingController editingController = TextEditingController();
      playerScores[player] = editingController;
      return SizedBox(
          width: 70,
          height: 70,
          child: Center(
              child: TextField(
            controller: editingController,
          )));
    } else {
      return Cell((round.getPlayerScore(player) ?? 0).toString());
    }
  }

  _onAddRoundButtonClicked(Map<Player, TextEditingController> playerScores) {
    Map<Player, int> scores = {};
    playerScores.forEach((key, value) {
      scores[key] = int.parse(value.text);
    });

    widget.gameScores.currentRound.setScore(scores);
    widget.gameScores.addRound();
  }
}

class Cell extends StatelessWidget {
  final double cellWidth = 70;
  final double cellHeight = 70;
  final String text;
  final Color backgroundColor = Colors.teal;

  const Cell(String this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: cellWidth,
      height: cellHeight,
      child: Container(
        child: Center(child: Text(text)),
      ),
    );
  }
}
