import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/budget_bloc.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BudgetBloc(),
      child: MaterialApp(
        title: 'Budget Manager',
        home: HomePage(),
      ),
    );
  }
}

