import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';

// providers
import 'package:google_tasks/models/todos.dart';
import 'package:google_tasks/repositories/todos_repository.dart';
import 'package:google_tasks/controllers/todos_controller.dart';

// screens
import 'package:google_tasks/screens/home_screen.dart';

void main() => runApp(Routes());

class Routes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (_) => TodosRepository()),
      ],
      child: MultiProvider(
        providers: [
          StateNotifierProvider<TodosController, Todos>(
            create: (_) => TodosController(),
          ),
        ],
        child: MaterialApp(
          title: 'Google Tasks Clone Project',
          initialRoute: '/HomeScreen',
          routes: {
            '/HomeScreen': (BuildContext context) => HomeScreen(),
          },
        ),
      ),
    );
  }
}
