import 'package:flutter/material.dart';
import 'package:gdsc/page%202/lists.dart';
import 'package:gdsc/page%202/task_list.dart';
import 'package:gdsc/page 3/ThirdTask.dart';
//import 'package:gdsc/todo.dart';

class Task_1 extends StatefulWidget {
  const Task_1({super.key});

  @override
  State<Task_1> createState() {
    return _Task_1State();
  }
}

class _Task_1State extends State<Task_1> {
  final List<ListOne> _registeredExpenses = [
    ListOne(
      title: 'ui/ux App Design ',
      date: DateTime.now(),
      category: Category.ui,
    ),
    ListOne(
      title: 'view candidates ',
      date: DateTime.now(),
      category: Category.ui,
    ),
    ListOne(
      title: 'Football Cu Drybling',
      date: DateTime.now(),
      category: Category.ui,
    ),
  ];
  


  // to show the thing that will be out put after press

  void _openAddExpenseOverLay() {
//?what is conext
//builder ?  accept function
//=> this mean short cut of return
//ctx - anothr name of context

    showModalBottomSheet(
        // to out put new screen from the bottom
        context: context,
        builder: (ctx) {
          return NewExpense(newtask: _addtask); //you don't have to import ????
        });
  }

  void _addtask(ListOne page) {
    setState(() {
      _registeredExpenses.add(page); // to add new card
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Todo List",
          textAlign: TextAlign.center,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          const Icon(Icons.more_vert),
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/images/mid one.jpg",
            width: 150,
          ),
          Expanded(
            child: TaskList(taskdone: _registeredExpenses),
          ),
          ElevatedButton(
            onPressed: _openAddExpenseOverLay,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(223, 233, 88, 59),
            ),
            child: const Text('Create Task'),
          ),
        ],
      ),
    );
  }
}
