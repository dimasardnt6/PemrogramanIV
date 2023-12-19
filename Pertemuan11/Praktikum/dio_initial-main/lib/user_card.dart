import 'package:dio_initial/user.dart';
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final UserCreate? usrCreate;
  final UserPut? usrPut;

  const UserCard({Key? key, this.usrCreate, this.usrPut}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    List<Widget> children = [];

    if (usrCreate != null) {
      children.add(_buildRow('ID', usrCreate!.id.toString()));
      children.add(_buildRow('Nama', usrCreate!.name));
      children.add(_buildRow('Job', usrCreate!.job));
      children.add(_buildRow('Created At', usrCreate!.createdAt.toString()));
    }

    if (usrPut != null) {
      children.add(_buildRow('Nama', usrPut!.name));
      children.add(_buildRow('Job', usrPut!.job));
      children.add(_buildRow('Updated At', usrPut!.updatedAt.toString()));
    }

    return Container(
      padding: const EdgeInsets.all(10),
      width: 400,
      decoration: BoxDecoration(
        color: Colors.lightBlue[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: children,
      ),
    );
  }

  Widget _buildRow(String label, String value) {
    return Container(
      padding: const EdgeInsets.all(3),
      width: 400,
      decoration: BoxDecoration(
        color: Colors.lightBlue[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 80,
            child: Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: 220,
            child: Text(
              ': $value',
            ),
          ),
        ],
      ),
    );
  }
}
