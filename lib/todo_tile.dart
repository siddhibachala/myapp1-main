  import 'package:flutter/material.dart';
  import 'package:flutter_slidable/flutter_slidable.dart';

  class TodoTile extends StatelessWidget {
    final String taskName;
    final bool taskcompleted;
    Function(bool?)? onChanged;
    Function(BuildContext)? deleteFunction;

     TodoTile({
      super.key,
      required this.taskName,
      required this.taskcompleted,
      required this.onChanged,
       required this.deleteFunction,
    });

    @override
    Widget build(BuildContext context) {
      return Padding(
        padding: const EdgeInsets.only(left: 20.0, right:20.0, top:20.0),
        child: Slidable(
          endActionPane: ActionPane(
            motion: StretchMotion(),
            children: [
      SlidableAction(
      onPressed: deleteFunction,
      icon: Icons.delete,
      backgroundColor: Colors.red,
        borderRadius: BorderRadius.circular(12),
      )
      ],
      ),
              child: Container(
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.pinkAccent.shade100,
                borderRadius: BorderRadius.circular(12),
              ),
              child : Row(
              children: [
                Checkbox(
                  value: taskcompleted,
                  onChanged: onChanged,
                  activeColor: Colors.black,
              ),

               Text(
                   taskName,
                 style: TextStyle(
                   decoration: taskcompleted
                     ? TextDecoration.lineThrough
                     : TextDecoration.none,
                 ),
               ),
          ],
        ),
        ),
        ),
      );
    }
  }
