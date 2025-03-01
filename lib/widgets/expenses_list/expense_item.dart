import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  ExpenseItem(this.expense, {super.key});
  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 20,
            ),
            child: Column(
              children: [
                Text(expense.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Text('\$${expense.amount.toStringAsFixed(2)}'),
                    const Spacer(),
                    Row(
                      children: [
                        Icon(categoryIcons[expense.category]),
                        const SizedBox(width: 5),
                        Text(expense.formattedDate),
                      ],
                    )
                  ],
                ),
              ],
            )));
  }
}
