import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  const TaskList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) => ListView.builder(
        itemBuilder: (context, index) => TaskTile(
          isChecked: taskData.tasks[index].isDone,
          taskTitle: taskData.tasks[index].name,
          changeCheckbox: (checkBox) {
            taskData.updateTask(
              taskData.tasks[index],
            );
          },
          deleteTask: () {
            taskData.deleteTask(taskData.tasks[index]);
          },
        ),
        itemCount: taskData.taskCount,
      ),
    );
  }
}
