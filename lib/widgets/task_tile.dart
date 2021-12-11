import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({Key? key}) : super(key: key);

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool _isChecked = false;

  void checkboxCallback(bool? checkboxState) {
    setState(() {
      _isChecked = checkboxState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'task 1',
        style: TextStyle(
          decoration: _isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckbox(_isChecked),
      onTap: () {
        setState(() {
          _isChecked ? false : true;
        });
      },
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool _checkboxState;
  final VoidCallback toggleCheckboxState;
  const TaskCheckbox(this._checkboxState, this.toggleCheckboxState);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: _checkboxState,
      onChanged: toggleCheckboxState,
    );
  }
}
