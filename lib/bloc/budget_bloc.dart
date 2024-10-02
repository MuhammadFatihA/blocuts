import 'package:flutter_bloc/flutter_bloc.dart';
import 'budget.dart';
import 'budget_event.dart';
import 'budget_state.dart';

class BudgetBloc extends Bloc<BudgetEvent, BudgetState> {
  BudgetBloc() : super(const BudgetState()) {
    on<AddBudgetEvent>((event, emit) {
      final updatedBudgets = List<Budget>.from(state.budgets)..add(event.budget);
      emit(BudgetState(budgets: updatedBudgets));
    });

    on<RemoveBudgetEvent>((event, emit) {
      final updatedBudgets = List<Budget>.from(state.budgets)..remove(event.budget);
      emit(BudgetState(budgets: updatedBudgets));
    });
  }
}

