import 'package:flutter/material.dart';

import 'feature/auth/test/view/test_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        theme: ThemeData.dark().copyWith(useMaterial3: true),
        debugShowCheckedModeBanner: false,
        home: const TestView());
  }
}
