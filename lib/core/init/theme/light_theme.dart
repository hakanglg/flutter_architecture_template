import 'package:flutter/material.dart';
import 'app_theme.dart';

class LightTheme extends AppTheme {
  static LightTheme? _instance;
  static LightTheme get instance {
    _instance ??= LightTheme._init();
    return _instance!;
  }

  LightTheme._init();

  ThemeData get theme => ThemeData.light();
}
