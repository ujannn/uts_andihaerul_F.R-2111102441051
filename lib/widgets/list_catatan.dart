// ignore_for_file: prefer_const_constructors, implementation_imports, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/list.dart';

class ListNoted extends StatelessWidget {
  final Listed todo;
  final onTodoChanged;
  final onDeleteItems;

  const ListNoted(
      {Key? key, required this.todo, this.onTodoChanged, this.onDeleteItems});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: ListTile(
        onTap: () {
          onTodoChanged(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: Colors.blueAccent,
        ),
        title: Text(
          todo.listText!,
          style: TextStyle(
              fontSize: 16,
              color: todo.isDone ? Colors.black45 : Colors.black87,
              decoration: todo.isDone ? TextDecoration.lineThrough : null),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: Colors.red[400],
            borderRadius: BorderRadius.circular(50),
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            icon: Icon(Icons.delete),
            onPressed: () {
              onDeleteItems(todo.id);
            },
          ),
        ),
      ),
    );
  }
}
