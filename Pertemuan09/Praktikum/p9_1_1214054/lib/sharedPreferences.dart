import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MySharedPreferences extends StatefulWidget {
  const MySharedPreferences({Key? key}) : super(key: key);

  @override
  State<MySharedPreferences> createState() => _MySharedPreferencesState();
}

class _MySharedPreferencesState extends State<MySharedPreferences> {
  final _inputController = TextEditingController();
  final _outputController = TextEditingController();

  late SharedPreferences data;

  void saveValue() async {
    data = await SharedPreferences.getInstance();
    data.setString('input', _inputController.text).toString();
    _inputController.clear();
  }

  void getValue() async {
    data = await SharedPreferences.getInstance();
    _outputController.text = data.getString('input').toString();
  }

  void removeValue() async {
    data = await SharedPreferences.getInstance();
    data.remove('input');
    _outputController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shared Preferences'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextField(
                controller: _inputController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: FractionallySizedBox(
                widthFactor: 1.0,
                child: ElevatedButton(
                  onPressed: () {
                    saveValue();
                  },
                  child: const Text('Save'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _outputController,
                readOnly: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: FractionallySizedBox(
                widthFactor: 1.0,
                child: ElevatedButton(
                  onPressed: () {
                    getValue();
                  },
                  child: const Text('Get Value'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: FractionallySizedBox(
                widthFactor: 1.0,
                child: ElevatedButton(
                  onPressed: () {
                    removeValue();
                  },
                  child: const Text('Delete Value'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
