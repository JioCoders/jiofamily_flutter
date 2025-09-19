import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  final String title;
  final double amount;
  final DateTime date;
  final String category;

  const TransactionItem({
    super.key,
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: ListTile(
        leading: CircleAvatar(child: Text(category[0])),
        title: Text(title),
        subtitle: Text(date.toString().split(' ')[0]),
        trailing: Text(
          "${amount < 0 ? '-' : '+'} ₹${amount.abs()}",
          style: TextStyle(color: amount < 0 ? Colors.red : Colors.green),
        ),
      ),
    );
  }
}
