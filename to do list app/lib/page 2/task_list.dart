import 'package:flutter/material.dart';
import 'package:gdsc/page%202/lists.dart';
//import 'package:gdsc/page%202/lists.dart';
import 'package:gdsc/page%202/task_item.dart';

//import 'package:gdsc/page%202/task.dart';

class TaskList extends StatelessWidget {
  const TaskList({
    super.key,
    required this.taskdone,
  });

  final List<ListOne> taskdone;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
       itemCount: taskdone.length,
      itemBuilder: (ctx, index) => TaskItem(taskdone[index]),
      // index - to acsses each lists form expenses
      //their is expense item - to pass a value to expense item .dart
    );
  }
}
