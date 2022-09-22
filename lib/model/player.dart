import 'dart:math';
import 'package:flutter/material.dart';

class Player {

  final String name;
  late Color signatureColor;

  Player(this.name) {
    signatureColor = SignatureColor.getRandomSignatureColor();
  }
}

class SignatureColor {
  static List<Color> signatureColors = List<Color>.of([
    Colors.blueAccent,
    Colors.yellowAccent,
    Colors.tealAccent,
    Colors.purpleAccent,
    Colors.purple,
    Colors.blueGrey,
    const Color(0xffD1D34E),
    const Color(0xffD15555),
    const Color(0xff68BD80),
    const Color(0xffF1F1F1),
    const Color(0xffCCCCCC),
  ]);

  static Color getRandomSignatureColor() {
    var random = Random();
    var index = random.nextInt(signatureColors.length);
    var color = signatureColors[index];
    signatureColors.remove(color);
    return color;
  }
}
