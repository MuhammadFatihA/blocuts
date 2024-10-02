import 'package:equatable/equatable.dart';
import 'budget.dart';

class BudgetState extends Equatable {
  final List<Budget> budgets;

  const BudgetState({this.budgets = const []});

  @override
  List<Object> get props => [budgets];
}
