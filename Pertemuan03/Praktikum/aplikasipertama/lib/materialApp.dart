import 'package:aplikasipertama/materialPage.dart';
import 'package:flutter/material.dart';

class AppMaterial extends StatelessWidget {
  const AppMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: const HomePage(),
    );
  }
}
