// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_application_1/util/my_button.dart';

// ignore: must_be_immutable, camel_case_types
class dialogBox extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;


  dialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });


  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blue[200],
      content: SizedBox(
        height: 120,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          TextField(
            controller: controller,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Add a new task",
              ),
          ),
            //save
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            MyButton(text: "Save", onPressed: onSave ),

            const SizedBox(width: 8),
            MyButton(text: "Cancel", onPressed: onCancel)


          ],
          )
        ]),
        ),
    );
  }
}