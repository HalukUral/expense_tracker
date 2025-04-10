import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList(
      {super.key, required this.expenses, required this.onDeleteExpense});
  final List<Expense> expenses;
  final void Function(Expense expense) onDeleteExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) => Dismissible(
          key: ValueKey(expenses[index]),
          background: Container(
            color: Theme.of(context).colorScheme.error.withOpacity(0.5),
            child: const Icon(Icons.delete, color: Colors.white, size: 40),
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.only(right: 20),
          ),
          onDismissed: (direction) => onDeleteExpense(expenses[index]),
          child: ExpenseItem(expenses[index])),
    );
  }
}
