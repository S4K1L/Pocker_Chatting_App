import 'package:flutter/material.dart';
import '../utils/colors.dart';

extension ExtendedTheme on BuildContext {
  CustomThemeExtension get theme {
    return Theme.of(this).extension<CustomThemeExtension>()!;
  }
}

class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  static const lightMode = CustomThemeExtension(
      circleImageColor: Color(0xFF25D366),
      greyColor: Coloors.greyLight,
      blueColor: Coloors.blueLight,
      lanBtnBgColor: Color(0xFFF7F8FA),
      langBtHighlightColor: Color(0xFFE8E8ED),
      authAppbarTextColor: Coloors.greyLight,
      photoIconBgColor: Color(0xFFF0F2F3),
      photoIconColor: Color(0xFF90AAB3),
  );
  static const darkMode = CustomThemeExtension(
    circleImageColor: Coloors.greenDark,
    greyColor: Coloors.greyDark,
    blueColor: Coloors.blueDark,
    lanBtnBgColor: Color(0xFF182229),
    langBtHighlightColor: Color(0xFF09141A),
    authAppbarTextColor: Color(0xFFE9EDEF),
    photoIconBgColor: Color(0xFF283339),
    photoIconColor: Color(0xFF61717B),
  );
  final Color? circleImageColor;
  final Color? greyColor;
  final Color? blueColor;
  final Color? lanBtnBgColor;
  final Color? langBtHighlightColor;
  final Color? authAppbarTextColor;
  final Color? photoIconBgColor;
  final Color? photoIconColor;


  const CustomThemeExtension({
    this.circleImageColor,
    this.greyColor,
    this.blueColor,
    this.lanBtnBgColor,
    this.langBtHighlightColor,
    this.authAppbarTextColor,
    this.photoIconBgColor,
    this.photoIconColor,
  });

  @override
  ThemeExtension<CustomThemeExtension> copyWith({
    Color? circleImageColor,
    Color? greyColor,
    Color? blueColor,
    Color? lanBtnBgColor,
    Color? langBtHighlightColor,
    Color? authAppbarTextColor,
    Color? photoIconBgColor,
    Color? photoIconColor,

  }) {
    return CustomThemeExtension(
      circleImageColor: circleImageColor ?? this.circleImageColor,
      greyColor: greyColor ?? this.greyColor,
      photoIconBgColor: photoIconBgColor ?? this.photoIconBgColor,
      photoIconColor: photoIconColor ?? this.photoIconColor,
      blueColor: blueColor ?? this.blueColor,
      authAppbarTextColor: authAppbarTextColor ?? this.authAppbarTextColor,
      lanBtnBgColor: lanBtnBgColor ?? this.lanBtnBgColor,
      langBtHighlightColor: langBtHighlightColor ?? this.langBtHighlightColor,
    );
  }

  @override
  ThemeExtension<CustomThemeExtension> lerp(
      covariant ThemeExtension<CustomThemeExtension>? other, double t) {
    if (other is! CustomThemeExtension) return this;
    return CustomThemeExtension(
      circleImageColor: Color.lerp(circleImageColor, other.circleImageColor, t),
      greyColor: Color.lerp(greyColor, other.greyColor, t),
      photoIconBgColor: Color.lerp(photoIconBgColor, other.photoIconBgColor, t),
      photoIconColor: Color.lerp(photoIconColor, other.photoIconColor, t),
      blueColor: Color.lerp(blueColor, other.blueColor, t),
      lanBtnBgColor: Color.lerp(lanBtnBgColor, other.lanBtnBgColor, t),
      authAppbarTextColor: Color.lerp(authAppbarTextColor, other.authAppbarTextColor, t),
      langBtHighlightColor:
          Color.lerp(langBtHighlightColor, other.langBtHighlightColor, t),
    );
  }
}
