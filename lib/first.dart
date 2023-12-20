//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gdsc/page%202/task.dart';
//import 'package:gdsc/todo.dart';

class First extends StatelessWidget {
  const First({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(213, 219, 89, 29),
            Color.fromARGB(255, 255, 135, 114)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child:Center(
      child: Column(
      
        mainAxisSize: MainAxisSize.min,
        children: [
          
          Image.asset(
            "assets/images/first_page.jpg",
            width: 200,
          ),
          const SizedBox(
            height: 200,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Task_1(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 14, 117, 202),
                foregroundColor: Colors.white),
            child: const Text('Get Started'),
          )
        ],
      ),
    ),
      ),
    );

    
  }
}
