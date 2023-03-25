import 'package:flutter/material.dart';

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

enum Gradients { gradeGrey }

final backgroundGradients = [
  {
    Gradients.gradeGrey: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        HexColor("#bdc3c7"),
        HexColor("#2c3e50"),
      ],
    )
  },
];

final backgroundThemes = [
  const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFFBE3E95),
      Color(0xFF643FE2),
    ],
  ),
  const LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      Color(0xFF8CE7CC),
      Color(0xFF6355E8),
    ],
  ),
  const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFF396afc),
      Color(0xFF2948ff),
    ],
  ),
  const LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      Color(0xFF1c92d2),
      Color(0xFFf2fcfe),
    ],
  ),
  const LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      Color(0xFF0f9b0f),
      Color(0xFF000000),
    ],
  ),
  const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFc0392b),
      Color(0xFF8e44ad),
    ],
  ),
  const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF159957),
      Color(0xFF155799),
    ],
  ),
  const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF000046),
      Color(0xFF1CB5E0),
    ],
  ),
];
