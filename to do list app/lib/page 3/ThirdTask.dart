import 'package:flutter/material.dart';
import 'package:gdsc/page%202/lists.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key,required this.newtask});
  final void  Function(ListOne page) newtask;
  @override
  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  //const _NewExpenseState({super.key});
  /*
  var _enterdvalue = '';
  void _savedvalue(String inputvalue) {
    _enterdvalue = inputvalue;
  }
*/
  final _titlecontroler = TextEditingController();
  final _discriptioncontroler = TextEditingController();

  void _presentDatepicker() {
    final now = DateTime.now();
    final firstdate = DateTime(now.year - 1, now.month, now.day);
    showDatePicker(
        context: context,
        initialDate: now,
        firstDate: firstdate,
        lastDate: now);
  }
  //Widget.newtask(ListOne(Title =))
    
 
  @override
  void dispose() {
    //to make flutter delete automaticaly after it is saved. - dispose
    _titlecontroler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const Text(
            'task name',
          ),
          //const TextStyle(foreground: Color.fromARGB(0, 180, 180, 223))
          TextField(
            controller: _titlecontroler, //to triger a function for any change
            maxLength: 50,
            decoration: const InputDecoration(
              label: Text("title"),
            ),
          ),
          Column(
            children: [
              TextField(
                controller:
                    _discriptioncontroler, //to triger a function for any change
                maxLength: 150,
                decoration: const InputDecoration(
                  label: Text("discription"),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconButton(
                onPressed: _presentDatepicker,
                icon: const Icon(Icons.calendar_month),
              ),
            ],
          ),
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {
                    print(_titlecontroler.text);
                    print(_discriptioncontroler.text);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 234, 110, 69)),
                  child: const Text("Add task"))
            ],
          )
        ],
      ),
    );
  }
}
