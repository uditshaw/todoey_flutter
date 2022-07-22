import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30))),
        child: Center(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Add Task',
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(color: Colors.lightBlue.shade300, fontSize: 30),
                ),
                TextField(
                  autofocus: true,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: null,
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(2),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.lightBlue.shade300),
                  ),
                  child: Text(
                    'Add',
                    style: TextStyle(color: Colors.white, fontSize: 25),
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
