import 'package:flutter/material.dart';
import '../model/game_score.dart';

class RoundTableView extends StatelessWidget {
  RoundTableView({super.key, required this.gameScores});

  GameScore gameScores;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 70,
          child: Column(
            children: const [
              Text("Players"),
            ],
          ),
        ),
        SizedBox(
          width: 70,
          child: Column(
            children: const [
              Text("총"),
            ],
          ),
        ),
        // ListView(
        //   scrollDirection: Axis.horizontal,
        //   physics: const AlwaysScrollableScrollPhysics(),
        //   children: [
        //     Column(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       children: [Text("1R")],
        //     ),
        //     Column(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       children: [Text("2R")],
        //     ),
        //     Column(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       children: [Text("1R")],
        //     ),
        //     Column(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       children: [Text("2R")],
        //     ),
        //     Column(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       children: [Text("1R")],
        //     ),
        //     Column(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       children: [Text("2R")],
        //     ),
        //     Column(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       children: [Text("1R")],
        //     ),
        //     Column(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       children: [Text("2R")],
        //     ),
        //     Column(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       children: [Text("1R")],
        //     ),
        //     Column(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       children: [Text("2R")],
        //     ),
        //     Column(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       children: [Text("1R")],
        //     ),
        //     Column(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       children: [Text("2R")],
        //     ),
        //     Column(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       children: [Text("1R")],
        //     ),
        //     Column(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       children: [Text("2R")],
        //     ),
        //     Column(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       children: [Text("1R")],
        //     ),
        //     Column(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       children: [Text("2R")],
        //     ),
        //     Column(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       children: [Text("1R")],
        //     ),
        //     Column(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       children: [Text("2R")],
        //     ),
        //     Column(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       children: [Text("1R")],
        //     ),
        //     Column(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       children: [Text("2R")],
        //     ),
        //   ],
        // ),
      ],
    );
  }
}
