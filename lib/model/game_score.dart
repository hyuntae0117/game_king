import 'package:game_king/model/player.dart';

class GameScore {
  int index = 0;
  Round get currentRound => roundScores.last;

  List<Player> players = [];
  List<Round> roundScores = [];

  GameScore(this.players) {
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

  static GameScore mock2() {
    Player ht = Player("현태");
    Player sj = Player("소정");
    Player jk = Player("정길");
    Player sb = Player("슬비");
    GameScore gameScore = GameScore(List.of([ht, sj, jk, sb]));

    gameScore.setRoundScore({ht: 30, sj: 48, jk: 11, sb: 21});

    gameScore.addRound();

    gameScore.setRoundScore({ht: 11, sj: 22, jk: 33, sb: 44});

    gameScore.addRound();

    gameScore.setRoundScore({sj: 22, jk: 33, sb: 44});

    gameScore.addRound();

    gameScore.setRoundScore({ht: 11, sj: 22, jk: 33, sb: 44});

    gameScore.addRound();

    return gameScore;
  }
}

class Round {
  int index = 0;
  Map<Player, int> score = {};

  Round(this.index);

  void setScore(Map<Player, int> score) {
    this.score = score;
  }

  int? getPlayerScore(Player player) {
    return score[player];
  }
}
