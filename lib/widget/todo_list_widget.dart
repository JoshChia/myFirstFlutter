import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/provider/todos.dart';
import 'package:flutter_app/widget/todo_widget.dart';
import 'package:flutter_app/model/todo.dart';

class TodoListWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final provider = Provider.of<TodosProvider>(context);
    final todos = provider.todos;
    
    return ListView.separated(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.all(16),
      separatorBuilder: (context, index) => Container(height: 8),
      itemCount: todos.length,
      itemBuilder: (context, index){
        final todo = todos[index];

        return TodoWidget(todo: todo);
      },
    );
  }
}