import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();
final formater = DateFormat.yMd();

enum Category { Food, Work, Travel, Miscellaneous, Health }

const categoryIcons = {
  Category.Food: Icons.fastfood,
  Category.Work: Icons.work,
  Category.Travel: Icons.flight,
  Category.Miscellaneous: Icons.attach_money,
  Category.Health: Icons.local_hospital,
};

class Expense {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  Expense(
      {required this.title,
      required this.amount,
      required this.date,
      required this.category})
      : id = uuid.v4();

  String get formattedDate {
    return formater.format(date);
  }
}
