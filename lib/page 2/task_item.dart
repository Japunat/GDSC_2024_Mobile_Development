import 'package:flutter/material.dart';
import 'package:gdsc/page%202/lists.dart';

class TaskItem extends StatelessWidget {
  const TaskItem(this.task, {super.key});

  final ListOne task;

  @override
  Widget build(BuildContext context) {
    // to make styling of a list
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 50,
          vertical: 25,
        ),
        //listviwe with column to make is scroleble
        child: Row(
          // to add many input from
          children: [
           CircleAvatar(
      child: Text(
        task.title[0].toUpperCase(),
        style: const TextStyle(
          color: Color.fromARGB(255, 24, 23, 22),
        ),
      ),
    ),
            const SizedBox(width: 8),
            Text(task.title),
            const SizedBox(width: 1000), //spacing
            Text(task.formattedDate),
          ],
        ),
      ),
    );
    // to card image look
  }
}
