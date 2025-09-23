import 'package:flutter/material.dart';
import 'package:jiofamily/src/route_name.dart';
import 'package:jiofamily/src/views/views.dart';

final Map<String, WidgetBuilder> appRoutes = {
  Routes.splash: (_) => const SplashScreen(),
  Routes.login: (_) => const LoginScreen(),
  Routes.dashboard: (_) => const DashboardScreen(),
  Routes.addTransaction: (_) => const AddTransactionScreen(),
  Routes.reports: (_) => const ReportsScreen(),
  Routes.budget: (_) => const BudgetScreen(),
  Routes.settings: (_) => const SettingsScreen(),
};