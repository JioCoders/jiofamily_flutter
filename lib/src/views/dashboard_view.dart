// lib/screens/dashboard_screen.dart
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // AppBar-like row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DropdownButton<String>(
                    value: "September 2025",
                    items: const [
                      DropdownMenuItem(value: "September 2025", child: Text("September 2025")),
                    ],
                    onChanged: (_) {},
                  ),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.person))
                ],
              ),
            ),

            // Summary card
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      _SummaryItem(label: "Income", amount: "₹12000"),
                      _SummaryItem(label: "Expense", amount: "₹7400"),
                      _SummaryItem(label: "Balance", amount: "₹4600"),
                    ],
                  ),
                ),
              ),
            ),

            // Today snapshot & transactions (expandable)
            const SizedBox(height: 12),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Align(alignment: Alignment.centerLeft, child: Text("Today: ₹500 spent")),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: 6,
                itemBuilder: (_, i) => Card(
                  child: ListTile(
                    leading: const CircleAvatar(child: Icon(Icons.fastfood)),
                    title: const Text("Dinner"),
                    subtitle: const Text("Sep 17, 2025"),
                    trailing: const Text("- ₹500", style: TextStyle(color: Colors.red)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SummaryItem extends StatelessWidget {
  final String label;
  final String amount;
  const _SummaryItem({required this.label, required this.amount});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(label, style: const TextStyle(fontSize: 12)),
        const SizedBox(height: 8),
        Text(amount, style: const TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }
}
