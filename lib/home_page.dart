          import 'package:flutter/material.dart';
          import 'package:myapp1/util/dialog_box.dart';
          import 'package:myapp1/todo_tile.dart';
          class HomePage extends StatefulWidget {
            const HomePage({super.key});

            @override
            State<HomePage> createState() => _HomePageState();
          }

          class _HomePageState extends State<HomePage> {
            final _controller = TextEditingController();
            List toDoList = [
              ['Make Tutorial', false],
              ['Do Exercise', false],
            ];

            void checkBoxChanged (bool? value, int index) {
              setState(() {
                toDoList [index] [1] = !toDoList[index] [1];
              });
            }
            // save new task
            void saveNewTask() {
              setState(() {
                toDoList.add([_controller.text, false]);
                _controller.clear();
              });
              Navigator.of(context).pop();
            }
            // create new task
            void createNewTask(){
              showDialog(
                  context: context,
                  builder: (context)
              {
                return DialogBox(
                  controller:_controller,
                  onSave: saveNewTask,
                  onCancel: () => Navigator.of(context).pop(),
                );
              },
              );
            }
            // delete task
            void deleteTask(int index) {
              setState(() {
                toDoList.removeAt(index);
              });
            }

            @override
            Widget build(BuildContext context) {
              return Scaffold(
                backgroundColor: (Colors.pink),
                appBar: AppBar(
                  backgroundColor: Colors.pink.shade300,
                  title: Text('TO DO'),
                  elevation: 0,
                  centerTitle: true
                ),
                floatingActionButton: FloatingActionButton(
                  onPressed: createNewTask,
                  child: Icon(Icons.add),
                ),
                body: ListView.builder(
                    itemCount: toDoList.length,
                    itemBuilder: (context, index) {
                      return TodoTile(
                          taskName: toDoList[index] [0],
                          taskcompleted: toDoList [index] [1],
                          onChanged: (value) => checkBoxChanged(value, index),
                        deleteFunction: (context) => deleteTask,
                      );
                    },
                ),
              );
            }
          }
