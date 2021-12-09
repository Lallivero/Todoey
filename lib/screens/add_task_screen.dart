import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF757575),
        //
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50.0),
            topLeft: Radius.circular(50.0),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Add Task',
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30.0),
            ),
            TextField(),
            TextButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.lightBlueAccent),
              ),
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
