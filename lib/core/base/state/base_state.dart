import 'package:flutter/material.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T> {
  ThemeData get themeData => Theme.of(context);

  // ColorConstants colorConstants = ColorConstants();

  @override
  void initState() {
    super.initState();
  }
}

// abstract class BaseStateless<T extends StatelessWidget> {
//   bool isLoading = false;
// }
