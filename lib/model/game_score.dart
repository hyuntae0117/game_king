import 'package:game_king/model/player.dart';

class GameScore {
  int index = 0;
  Round get currentRound => roundScores.last;

  List<Round> roundScores = [];

  GameScore() {
    roundScores = [Round(1)];
  }

  void addRound() {
    var newRound = Round(currentRound.index + 1);
    roundScores.add(newRound);
  }

  void setRoundScore(Map<Player, int> score) {
    currentRound.setScore(score);
  }

  int getTotalScore(Player player) {
    var totalScore = 0;

    for (var roundScore in roundScores) {
      int score = roundScore.score[player] ?? 0;
      totalScore += score;
    }

    return totalScore;

  }
}

class Round {
  int index = 0;
  Map<Player, int> score = {};

  Round(this.index);

  void setScore(Map<Player, int> score) {
    this.score = score;
  }
}
