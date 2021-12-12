import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({Key? key, required this.addTask}) : super(key: key);
  final Function addTask;
  late String? _taskName;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF757575),
        //
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: 20.0, vertical: 20.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50.0),
            topLeft: Radius.circular(50.0),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Add Task',
              style: TextStyle(
                  color: Colors.lightBlueAccent, fontSize: 30.0),
              textAlign: TextAlign.center,
            ),
            TextField(
              autofocus: true,
              onChanged: (value) {
                _taskName = value;
              },
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 15.0,
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.lightBlueAccent),
              ),
              child: const Text(
                'Add',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              onPressed: () {
                addTask(_taskName);
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
