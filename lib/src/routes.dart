import 'package:flutter/material.dart';
import 'package:jiofamily/src/views/views.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (_) => const SplashScreen(),
  '/login': (_) => const LoginScreen(),
  '/dashboard': (_) => const DashboardScreen(),
  '/add': (_) => const AddTransactionScreen(),
  '/reports': (_) => const ReportsScreen(),
  '/budget': (_) => const BudgetScreen(),
  '/settings': (_) => const SettingsScreen(),
};
