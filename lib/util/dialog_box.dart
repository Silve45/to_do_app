import 'package:flutter/material.dart';
import 'package:to_do_app/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;

  //methods for save/cancel
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel

  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //get user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "task here",
              ),

            ),
            //buttons -> save, cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              //save
              MyButton(text: "Save", onPressed: onSave),//(){} does nothing

              //custom spacing
              const SizedBox(width: 15,), // const makes it so it doesn't have to get it at run time

              //cancel
              MyButton(text: "Cancel", onPressed: onCancel),//(){} does nothing
            ],)
          ], // children
        ),
      ),
    );
  }
}
