import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/data_tasks_list.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<DataTasksList>(
      builder: (context, tasksData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = tasksData.taskList[index];
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkboxCallback: (bool? checkboxState) {
                tasksData.toggleDone(index);
              },
              onLongPress: () {
                tasksData.removeTask(index);
              },
            );
          },
          itemCount: tasksData.taskCount,
        );
      },
    );
  }
}
