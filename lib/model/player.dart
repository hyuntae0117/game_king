import 'dart:math';
import 'dart:ui';

class Player {
  final String name;
  late Color signatureColor;

  Player(this.name) {
    signatureColor = SignatureColor.getRandomSignatureColor();
  }
}

class SignatureColor {
  static List<Color> signatureColors = List<Color>.of([
    const Color(0xffff3456),
    const Color(0xff12ff56),
    const Color(0xff123456),
    const Color(0xffff34ff),
  ]);

  static Color getRandomSignatureColor() {
    var random = Random();
    return signatureColors[random.nextInt(signatureColors.length)];
  }
}
