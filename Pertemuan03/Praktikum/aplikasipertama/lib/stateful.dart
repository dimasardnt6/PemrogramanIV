import 'package:flutter/material.dart';

class MyStateful extends StatefulWidget {
  const MyStateful({super.key});

  @override
  State<MyStateful> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyStateful> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Text('Selamat Datang di Flutter ini Class Stateful')),
      ),
    );
  }
}
