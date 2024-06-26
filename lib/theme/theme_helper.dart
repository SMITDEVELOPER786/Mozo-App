import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    PrefUtils().setThemeData(_newTheme);
    Get.forceAppUpdate();
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.lime5004,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            width: 1.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.onSurface;
        }),
        side: BorderSide(
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.gray10001,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.gray20001,
          fontSize: 16.fSize,
          fontFamily: 'Arial Rounded MT Bold',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.gray70005,
          fontSize: 13.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.black900,
          fontSize: 11.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        ),
        headlineLarge: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 30.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        headlineMedium: TextStyle(
          color: appTheme.gray90005,
          fontSize: 28.fSize,
          fontFamily: 'Source Serif Pro',
          fontWeight: FontWeight.w700,
        ),
        headlineSmall: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 25.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        labelLarge: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 12.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 10.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        labelSmall: TextStyle(
          color: appTheme.gray80001,
          fontSize: 8.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          color: appTheme.gray90001,
          fontSize: 20.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: appTheme.amber700,
          fontSize: 16.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        titleSmall: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 15.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFFF5EC21),
    primaryContainer: Color(0XFFEA131F),
    secondaryContainer: Color(0XFFD4F146),

    // Error colors
    errorContainer: Color(0XFF8F9A80),
    onError: Color(0XFFD1F0BB),
    onErrorContainer: Color(0XB21A1919),

    // On colors(text colors)
    onPrimary: Color(0XFF292929),
    onPrimaryContainer: Color(0XFF030A01),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Amber
  Color get amber100 => Color(0XFFFCFCB4);
  Color get amber10001 => Color(0XFFF6FAB3);
  Color get amber20033 => Color(0X33FAE990);
  Color get amber400 => Color(0XFFFFCF26);
  Color get amber500 => Color(0XFFFFC807);
  Color get amber50001 => Color(0XFFFFCA0C);
  Color get amber50075 => Color(0X75FFBC13);
  Color get amber600 => Color(0XFFDAAF01);
  Color get amber700 => Color(0XFFFF9E0C);
  Color get amber70001 => Color(0XFFF5A000);
  Color get amberA400 => Color(0XFFFFBF00);
  Color get amberA40001 => Color(0XFFFFC300);
  Color get amberA700 => Color(0XFFF7A80F);
  Color get bluenew => Color.fromARGB(255, 66, 71, 83);
  Color get yellownew =>  Color(0XFF485707);
  Color get darkbluewnew =>  Color(0XFF4e4b86);
  Color get darkcyanwnew =>  Color(0XFF106d6e);




  // Black
  Color get black900 => Color(0XFF000000);

  // BlackB
  Color get black900B2 => Color(0XB20E0D0D);

  // BlackD
  Color get black900D8 => Color(0XD8030D01);

  // Blue
  Color get blue50 => Color(0XFFE8F7FF);
  Color get blue900 => Color(0XFF0040BF);

  // BlueGray
  Color get blueGray100 => Color(0XFFD9D9D9);
  Color get blueGray10001 => Color(0XFFCCCCCC);
  Color get blueGray400 => Color(0XFF8D8C8C);
  Color get blueGray40001 => Color(0XFF7B8D82);
  Color get blueGray50 => Color(0XFFEDF0F1);
  Color get blueGray5001 => Color(0XFFF1F1F1);
  Color get blueGray5002 => Color(0XFFF1F2F2);
  Color get blueGray5003 => Color(0XFFECEEEF);
  Color get blueGray600 => Color(0XFF486484);
  Color get blueGray700 => Color(0XFF525252);
  Color get blueGray70001 => Color(0XFF535353);
  Color get blueGray900 => Color(0XFF292D32);
  Color get blueGray90001 => Color(0XFF292A2B);
  Color get blueGray90099 => Color(0X99362F2F);

  // Cyan
  Color get cyan900 => Color(0XFF005663);
  Color get cyanA200 => Color(0XFF00FFDD);
  Color get cyanA20001 => Color(0XFF00FFFF);
  Color get cyanA400 => Color(0XFF00DDF4);

  // DeepOrange
  Color get deepOrange400 => Color(0XFFFF8B3E);
  Color get deepOrange600 => Color(0XFFFE4119);
  Color get deepOrange800 => Color(0XFFCC4B00);
  Color get deepOrange900 => Color(0XFFCC3300);

  // DeepPurple
  Color get deepPurple600 => Color(0XFF5729BF);
  Color get deepPurpleA200 => Color(0XFF9747FF);
  Color get deepPurpleA400 => Color(0XFF6214FF);
  Color get deepPurpleA40001 => Color(0XFF6F27FF);
  Color get deepPurpleA700 => Color(0XFF5900CC);

  // Gray
  Color get gray100 => Color(0XFFF2F4F6);
  Color get gray10001 => Color(0XFFF4F4F4);
  Color get gray200 => Color(0XFFF0F0F0);
  Color get gray20001 => Color(0XFFE6E7E8);
  Color get gray20002 => Color(0XFFEAEAEA);
  Color get gray300 => Color(0XFFDDDBDB);
  Color get gray30001 => Color(0XFFDAE1E3);
  Color get gray30002 => Color(0XFFE6E6E6);
  Color get gray30003 => Color(0XFFE1E1E1);
  Color get gray30004 => Color(0XFFE4ECD7);
  Color get gray30005 => Color(0XFFE8E5E5);
  Color get gray30006 => Color(0XFFDEE3D9);
  Color get gray30007 => Color(0XFFDFDDDD);
  Color get gray30008 => Color(0XFFE3E1E1);
  Color get gray400 => Color(0XFFC8C4C4);
  Color get gray40001 => Color(0XFFB3B3B3);
  Color get gray40002 => Color(0XFFB4B4B4);
  Color get gray40003 => Color(0XFFBFBFBF);
  Color get gray40004 => Color(0XFFBAC2A4);
  Color get gray40005 => Color(0XFFB1B1B1);
  Color get gray40006 => Color(0XFFBDBDBD);
  Color get gray40007 => Color(0XFFC5C5C5);
  Color get gray50 => Color(0XFFF7FCFF);
  Color get gray500 => Color(0XFFAEA6A6);
  Color get gray50001 => Color(0XFF929F7C);
  Color get gray50002 => Color(0XFF9C9B9B);
  Color get gray50003 => Color(0XFFA1A1A1);
  Color get gray50004 => Color(0XFF9F9F9F);
  Color get gray50005 => Color(0XFF9CA295);
  Color get gray50006 => Color(0XFFA5A5A5);
  Color get gray50007 => Color(0XFF9E9E9E);
  Color get gray50008 => Color(0XFF999999);
  Color get gray50009 => Color(0XFFA4A7A8);
  Color get gray50010 => Color(0XFFAEAAAA);
  Color get gray50011 => Color(0XFFA39C9C);
  Color get gray50012 => Color(0XFF9E9999);
  Color get gray50013 => Color(0XFF9B9898);
  Color get gray50014 => Color(0XFFA5A3A3);
  Color get gray50015 => Color(0XFF979797);
  Color get gray50016 => Color(0XFFA3A3A3);
  Color get gray5001 => Color(0XFFF5FAFF);
  Color get gray600 => Color(0XFF828181);
  Color get gray60001 => Color(0XFF7A7474);
  Color get gray60002 => Color(0XFF6B6B6B);
  Color get gray60003 => Color(0XFF838080);
  Color get gray60004 => Color(0XFF7F7F7F);
  Color get gray60005 => Color(0XFF7C7C7C);
  Color get gray60006 => Color(0XFF808080);
  Color get gray60007 => Color(0XFF7D8271);
  Color get gray60008 => Color(0XFF88917B);
  Color get gray60009 => Color(0XFF858484);
  Color get gray60010 => Color(0XFF838383);
  Color get gray60011 => Color(0XFF7E8371);
  Color get gray700 => Color(0XFF61696D);
  Color get gray70001 => Color(0XFF666361);
  Color get gray70002 => Color(0XFF6B6969);
  Color get gray70003 => Color(0XFF666666);
  Color get gray70004 => Color(0XFF545453);
  Color get gray70005 => Color(0XFF626262);
  Color get gray70006 => Color(0XFF6B6568);
  Color get gray70007 => Color(0XFF5B5A5A);
  Color get gray70008 => Color(0XFF686565);
  Color get gray70009 => Color(0XFF575E45);
  Color get gray70010 => Color(0XFF686666);
  Color get gray800 => Color(0XFF5F4B3B);
  Color get gray80001 => Color(0XFF3A3939);
  Color get gray80002 => Color(0XFF3F3F3A);
  Color get gray80003 => Color(0XFF4C4C4C);
  Color get gray80004 => Color(0XFF4A4A4A);
  Color get gray80005 => Color(0XFF4F4F4F);
  Color get gray80006 => Color(0XFF3C3C3C);
  Color get gray80059 => Color(0X594A4949);
  Color get gray900 => Color(0XFF5B1500);
  Color get gray90001 => Color(0XFF232323);
  Color get gray90002 => Color(0XFF152232);
  Color get gray90003 => Color(0XFF2C2F01);
  Color get gray90004 => Color(0XFF0F1622);
  Color get gray90005 => Color(0XFF222121);
  Color get gray90006 => Color(0XFF231F20);
  Color get gray90007 => Color(0XFF1E1E1E);
  Color get gray90008 => Color(0XFF232222);
  Color get gray90009 => Color(0XFF403208);

  // Grayc
  Color get gray8004c => Color(0X4C4D4A4A);

  // Grayf
  Color get gray8007f => Color(0X7F474545);

  // GrayB
  Color get gray900B2 => Color(0XB21B1919);
  Color get gray900B201 => Color(0XB21F1F1F);

  // Green
  Color get green100 => Color(0XFFC3E1CE);
  Color get green200 => Color(0XFFA1EA94);
  Color get green400 => Color(0XFF7CA67A);
  Color get green40033 => Color(0X3378B066);
  Color get green50 => Color(0XFFDDF4DB);
  Color get green500 => Color(0XFF4CAF50);
  Color get green5001 => Color(0XFFEAF6D9);
  Color get green5002 => Color(0XFFE9EEE3);
  Color get green5003 => Color(0XFFE2F8E1);
  Color get green5004 => Color(0XFFE7FADA);
  Color get green5005 => Color(0XFFDBFFDD);
  Color get green5006 => Color(0XFFE1F7E0);
  Color get green600 => Color(0XFF4BAC3C);
  Color get green60001 => Color(0XFF46AA3D);
  Color get green60002 => Color(0XFF48AB3C);
  Color get green700 => Color(0XFF139947);
  Color get green70001 => Color(0XFF1B9759);
  Color get green70002 => Color.fromARGB(255, 6, 141, 58);
  Color get green800 => Color(0XFF178822);
  Color get green80001 => Color(0XFF1C8944);
  Color get green80002 => Color(0XFF119103);
  Color get green80003 => Color(0XFF149338);
  Color get green80004 => Color(0XFF2A9D0C);
  Color get green80005 => Color(0XFF149238);
  Color get green80006 => Color(0XFF22A809);
  Color get green900 => Color(0XFF067F03);
  Color get green90001 => Color(0XFF088C00);
  Color get green90002 => Color(0XFF1F5A03);
  Color get greenA100 => Color(0XFFAFE3BE);
  Color get greenA10001 => Color(0XFFC9FFD9);
  Color get greenA400 => Color(0XFF09DA7C);
  Color get greenA700 => Color(0XFF13B050);
  Color get greenA70001 => Color(0XFF0DD04E);
  Color get greenA70002 => Color(0XFF08BF10);
  Color get greenA70075 => Color(0X7500FD37);

  // Indigo
  Color get indigo500 => Color(0XFF314FBA);

  // Indigof
  Color get indigo9000f => Color(0X0F103580);

  // LightBlue
  Color get lightBlue500 => Color(0XFF10A7FC);
  Color get lightBlue700 => Color(0XFF0091C4);
  Color get lightBlue800 => Color(0XFF0073B5);
  Color get lightBlueA200 => Color(0XFF38B6FF);
  Color get lightBlueA400 => Color(0XFF00C3FF);

  // LightGreen
  Color get lightGreen100 => Color(0XFFDAFED8);
  Color get lightGreen10001 => Color(0XFFDAFDD7);
  Color get lightGreen10002 => Color(0XFFE1EBC8);
  Color get lightGreen10003 => Color(0XFFDAE3C3);
  Color get lightGreen10004 => Color(0XFFDEE5CA);
  Color get lightGreen10005 => Color(0XFFD6F5C0);
  Color get lightGreen300 => Color(0XFFA8B588);
  Color get lightGreen50 => Color(0XFFF0F7DE);
  Color get lightGreen500 => Color(0XFF8CCE2D);
  Color get lightGreen5001 => Color(0XFFF2FAE6);
  Color get lightGreen5002 => Color(0XFFF1FAE4);
  Color get lightGreen5003 => Color(0XFFF1F9E5);
  Color get lightGreen5004 => Color(0XFFF1F8DF);
  Color get lightGreen5005 => Color(0XFFF5FBEC);
  Color get lightGreen5006 => Color(0XFFF0F9E3);
  Color get lightGreen700 => Color(0XFF5CB339);
  Color get lightGreen70001 => Color(0XFF54B11A);
  Color get lightGreen80033 => Color(0X335A9F0F);
  Color get lightGreen900 => Color(0XFF596108);
  Color get lightGreenA100 => Color(0XFFDAFF8B);
  Color get lightGreenA10001 => Color(0XFFD5FF7D);
  Color get lightGreenA10002 => Color(0XFFDAFA87);

  // LightGreenf
  Color get lightGreen2007f => Color(0X7FCCDDA1);

  // Lime
  Color get lime100 => Color(0XFFF6F9CC);
  Color get lime10001 => Color(0XFFF2EAC2);
  Color get lime10002 => Color(0XFFE7F9BB);
  Color get lime10003 => Color(0XFFEBF5D3);
  Color get lime10004 => Color(0XFFEBF5D2);
  Color get lime10005 => Color(0XFFE8FFB6);
  Color get lime10006 => Color(0XFFF0F4B6);
  Color get lime10007 => Color(0XFFF4F6CF);
  Color get lime10008 => Color(0XFFEAF5CD);
  Color get lime10009 => Color(0XFFF0F2C4);
  Color get lime10010 => Color(0XFFF0F2C3);
  Color get lime10011 => Color(0XFFEDFFD0);
  Color get lime10012 => Color(0XFFE9F8C8);
  Color get lime10013 => Color(0XFFEAF9C9);
  Color get lime10014 => Color(0XFFECF5D4);
  Color get lime10015 => Color(0XFFECF5D3);
  Color get lime10016 => Color(0XFFE4FABC);
  Color get lime10017 => Color(0XFFF2F5BD);
  Color get lime200 => Color(0XFFDAECB0);
  Color get lime20001 => Color(0XFFDEE39D);
  Color get lime300 => Color(0XFFCCEB7B);
  Color get lime30001 => Color(0XFFEBE36B);
  Color get lime30002 => Color(0XFFE8E67E);
  Color get lime30003 => Color(0XFFE7E67E);
  Color get lime50 => Color(0XFFF8FFEE);
  Color get lime500 => Color(0XFFDDC445);
  Color get lime5001 => Color(0XFFF8FFED);
  Color get lime5002 => Color(0XFFF4FEE6);
  Color get lime5003 => Color(0XFFF3FDE5);
  Color get lime5004 => Color(0XFFF7FFEE);
  Color get lime700 => Color(0XFFB1BF13);
  Color get lime70001 => Color(0XFFD0A50D);
  Color get lime70002 => Color(0XFFBB9C57);
  Color get lime900 => Color(0XFF854D01);
  Color get limeA200 => Color(0XFFF0FF4F);
  Color get limeA70075 => Color(0X75ADF710);

  // LimeEa
  Color get lime800Ea => Color(0XEABB8E06);

  // Orange
  Color get orange50 => Color(0XFFF7F9D5);
  Color get orange500 => Color(0XFFFF9900);
  Color get orange5001 => Color(0XFFF7F9D6);
  Color get orange5002 => Color(0XFFF2F4DB);
  Color get orange5003 => Color(0XFFF3F4DC);
  Color get orange600 => Color(0XFFF19205);
  Color get orange800 => Color(0XFFDF6909);
  Color get orange80001 => Color(0XFFCC7700);
  Color get orange80002 => Color(0XFFF56D00);
  Color get orange80003 => Color(0XFFD36900);
  Color get orange900 => Color(0XFFE95806);

  // OrangeDd
  Color get orange800Dd => Color(0XDDE8750A);

  // Pink
  Color get pink600 => Color(0XFFDA0553);
  Color get pink800 => Color(0XFFA20074);
  Color get pink900 => Color(0XFF822670);

  // Purple
  Color get purple400 => Color(0XFFBF30A7);
  Color get purple600 => Color(0XFF8E3D9C);
  Color get purple60001 => Color(0XFF9500AF);
  Color get purple800 => Color(0XFF710499);
  Color get purpleA400 => Color(0XFFCA00F4);
  Color get purpleA40001 => Color(0XFFDB00D3);
  Color get purpleA40002 => Color(0XFFDF14FF);
  Color get purpleA700 => Color(0XFFAC00F4);
  Color get purpleA70001 => Color(0XFFA000F4);

  // Red
  Color get red100 => Color(0XFFFFE2CE);
  Color get red500 => Color(0XFFEA4335);
  Color get red600 => Color(0XFFDA3736);
  Color get red700 => Color(0XFFE9121F);
  Color get red900 => Color(0XFF770000);
  Color get redA100 => Color(0XFFFF897E);
  Color get redA700 => Color(0XFFDF0C0C);

  // Teal
  Color get teal700 => Color(0XFF087E58);
  Color get teal900 => Color(0XFF0B4653);
  Color get tealA700 => Color(0XFF00CCB1);
  Color get tealA70001 => Color(0XFF00BCA1);

  // White
  Color get whiteA700 => Color(0XFFFFFFFF);

  // Yellow
  Color get yellow100 => Color(0XFFFFFBCA);
  Color get yellow10033 => Color(0X33FFF4BB);
  Color get yellow400 => Color(0XFFF5F550);
  Color get yellow500 => Color(0XFFFFF525);
  Color get yellow50001 => Color(0XFFFFEA27);
  Color get yellow700 => Color(0XFFFFB81F);
  Color get yellow70033 => Color(0X33E3C41D);
  Color get yellow800 => Color(0XFFFFB61D);
  Color get yellow900 => Color(0XFFFF8329);
  Color get yellow90001 => Color(0XFFFC762A);
  Color get yellow90002 => Color(0XFFDD8628);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
