import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class AddNewTaskModal extends StatelessWidget {
  AddNewTaskModal({
    Key? key,
  }) : super(key: key);

  String newTextTitle = '';

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 10,
        ),
        child: Column(
          children: [
            const Text(
              'Add Task',
              style: TextStyle(
                fontSize: 30,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newValue) {
                newTextTitle = newValue;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                Provider.of<TaskData>(context, listen: false)
                    .addNewTask(newTextTitle);
                Navigator.pop(context);
              },
              child: const Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
