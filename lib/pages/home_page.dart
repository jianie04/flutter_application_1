// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/util/dialog_box..dart';
import '../util/todo_tile.dart';

class HomePage extends StatefulWidget {
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

//TEXT CONTROLLER
  final _controller =TextEditingController();

List toDoList = [
  ["Trade", false],
  ["Code",false],
];
  

void checkBoxChanged(bool? value, int index){
  setState((){
    toDoList[index][1] = !toDoList[index][1];
  });
}

//save new task
void saveNewTask() {
  setState(() {
    toDoList.add((_controller.text,false));
    _controller.clear();
  });
  Navigator.of(context).pop();
}
  void createNewTask(){
    showDialog(
      context: context, 
      builder: (context) {
        return dialogBox(
           controller: _controller,
           onSave: saveNewTask,
           onCancel: () => Navigator.of(context).pop(),
        );
      },
    );
  }
  // TextEditingController myController = TextEditingController();
  
  //delete Task
  void deleteTask(int index){
    setState(() {
      toDoList.removeAt(index);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text ("TO DO"),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Icon(Icons.add),
        ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: toDoList[index][0],
            taskCompleted: toDoList[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
            deleteFunction: (context) => deleteTask,
          );
        },
      ),
    );
  }
}