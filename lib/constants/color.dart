import 'dart:ui';

class FzColors {
  FzColors._();

  /// Facemash Hex Color Code
  static const String facemashColor = '#660000';

  /// Facebook Hex Color Code
  static const String facebookColor = '';

  /// Whatsapp Hex Color Code
  static const String whatsappColor = '';

  /// Google Hex Color Code
  static const String googleColor = '';

  /// Linkedin Hex Color Code
  static const String linkedinColor = '';

  /// Text Color White Hex Color Code
  static const String textColorWhite = '#FFFFFF';

  //* Hex to Color
  //* Construct a color from a hex code string, of the format #RRGGBB
  static Color hexToColor(String code) =>
      Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}
