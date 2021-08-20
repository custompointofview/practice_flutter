import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.taskCount,
          itemBuilder: (context, index) {
            return TaskTile(
              title: taskData.getTaskName(index),
              isChecked: taskData.getStatus(index),
              onCheck: (value) {
                context.read<TaskData>().toggleTask(index);
              },
              onRemove: () {
                context.read<TaskData>().removeTask(index);
              },
            );
          },
        );
      },
    );
  }
}
