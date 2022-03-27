import 'dart:ui';

class Pallete {
  // https://coolors.co/cc444b-da5552-df7373-e39695-e4b1ab
  static Color kPrimary = const Color(0xFFcc444b);// english vermilion
  static Color kSecondary = const Color(0xffda5552); // indian red
  static Color kTertiary = const Color(0xffdf7373); //candy pink
  static Color kQuartenary = const Color(0xffe39695); //pastel pink
  static Color kQuinary = const Color(0xffe4b1ab); //pastel pink 2

  static Color hexToColor(String code) {
    return Color(int.parse(code.substring(1,7), radix: 16)+ 0xFF000000);
  }
}

