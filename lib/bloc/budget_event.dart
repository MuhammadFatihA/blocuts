import 'package:equatable/equatable.dart';
import 'budget.dart';

abstract class BudgetEvent 
 {
  @override
  List<Object> get props => [];
}

class AddBudgetEvent extends BudgetEvent {
  final Budget budget;

  AddBudgetEvent(this.budget);

  @override
  List<Object> get props => [budget];
}

class RemoveBudgetEvent extends BudgetEvent {
  final Budget budget;

  RemoveBudgetEvent(this.budget);

  @override
  List<Object> get props => [budget];
}

