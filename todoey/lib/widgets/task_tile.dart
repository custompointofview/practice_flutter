import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final Function(bool?) onCheck;
  final Function onRemove;

  const TaskTile({
    Key? key,
    required this.title,
    required this.isChecked,
    required this.onCheck,
    required this.onRemove,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: new UniqueKey(),
      onDismissed: (direction) {
        this.onRemove();
      },
      resizeDuration: Duration(milliseconds: 500),
      child: ListTile(
        title: Text(
          this.title,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          activeColor: Colors.redAccent,
          value: isChecked,
          onChanged: this.onCheck,
        ),
      ),
    );
  }
}
