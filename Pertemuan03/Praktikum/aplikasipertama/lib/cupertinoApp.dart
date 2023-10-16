import 'package:aplikasipertama/cupertinoPage.dart';
import 'package:flutter/cupertino.dart';

class AppCupertino extends StatelessWidget {
  final _themeDark = const CupertinoThemeData.raw(
    Brightness.dark,
    null,
    null,
    null,
    null,
    null,
    null,
  );

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: _themeDark,
      home: const HomePage(),
    );
  }
}
