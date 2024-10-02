import 'budget.dart';

abstract class BudgetEvent {}

class AddBudgetEvent extends BudgetEvent {
  final Budget budget;

  AddBudgetEvent(this.budget);
}

class RemoveBudgetEvent extends BudgetEvent {
  final Budget budget;

  RemoveBudgetEvent(this.budget);
}
