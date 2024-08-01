import 'package:flutter/material.dart';

class TaskPopUp extends StatelessWidget {

  final String neededText;

  TaskPopUp({
    super.key,
    required this.neededText

  });

  @override
  Widget build(BuildContext context) {

    return AlertDialog(
        backgroundColor: Colors.yellow[200],
        content: SizedBox(
          height: 250,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  child: Center(child: Text(neededText, maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 24),)),
                  height: 120,
                  padding: EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(12),
                  )
              ),
              SizedBox(
                width: 200,
                child: Text(
                  neededText,
                  maxLines : 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24),
                )
              )
            ],
          ),
        )
    );
  }
}