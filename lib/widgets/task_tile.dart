import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile(
      {Key? key,
      required this.isChecked,
      required this.taskTitle,
      required this.changeCheckbox,
      required this.deleteTask})
      : super(key: key);

  final bool isChecked;
  final String taskTitle;
  final Function(bool) changeCheckbox;
  final VoidCallback deleteTask;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: deleteTask,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: (value) {
          changeCheckbox(value!);
        },
      ),
    );
  }
}
