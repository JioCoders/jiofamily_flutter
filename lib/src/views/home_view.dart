import 'package:flutter/material.dart';
import 'package:jiofamily/src/route_name.dart';
import 'package:jiofamily/src/views/widgets/summary_card.dart';
import 'package:jiofamily/src/views/widgets/txn_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SummaryCard(),
          const SizedBox(height: 10),
          const Text("Recent Transactions"),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (_, i) => TransactionItem(
                title: "Dinner",
                amount: -500,
                date: DateTime.now(),
                category: "Food",
              ),
            ),
          )
        ],
      ),
    );
  }
}
