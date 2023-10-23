import 'package:flutter/material.dart';
import 'package:p4_2_1214054/content.dart';

class MyScreen extends StatelessWidget {
  const MyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[600],
        title: const Text(
          'Tugas Pertemuan 4',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: const MyContent(),
    );
  }
}
