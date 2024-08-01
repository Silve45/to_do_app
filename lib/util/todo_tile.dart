import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile extends StatelessWidget {

  final String taskName;
  final bool taskCompleted;
  Function (bool?)? onChanged;
  Function(BuildContext)? deleteFunction;
  Function()? popUp;

  ToDoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction,
    required this.popUp,

  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
      child: Slidable(
        //this and start action pane are just the directions you are sliding in
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
              SlidableAction(
                onPressed: deleteFunction,
                icon: Icons.delete,
                backgroundColor: Colors.red,//had problems with the other way
                borderRadius: BorderRadius.circular(12),


            )

          ],

        ),
        child: GestureDetector(
          onTap: popUp,
          child: Container(

            padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                //checkbox
                Checkbox(
                  value: taskCompleted,
                  onChanged: onChanged,
                  activeColor: Colors.black,

                ),

                //taskname
                SizedBox(
                  width: 210, // uh... so I didn't know the width, but this worked so...
                  child: Text(
                    taskName,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 24,
                      decoration: taskCompleted ? TextDecoration.lineThrough : TextDecoration.none,

                  ),

                  ),
                ),
              ],
            ),

          ),
        ),
      ),
    );
  }
}
