import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:google_tasks/controllers/todos_controller.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('getStocks'),
          onPressed: () {
            context.read<TodosController>().getStocks();
          },
        ),
      ),
    );
  }
}
