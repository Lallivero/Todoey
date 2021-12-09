import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  bool? _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('task 1'),
      trailing: Checkbox(
        value: _isChecked,
        onChanged: (bool? value) {
          _isChecked = value;
        },
      ),
      onTap: () {},
    );
  }
}
