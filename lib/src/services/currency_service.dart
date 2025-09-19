class CurrencyService {
  static String currentCurrency = "₹";

  static void setCurrency(String c) {
    currentCurrency = c;
  }

  static String format(double amount) {
    return "$currentCurrency${amount.toStringAsFixed(2)}";
  }
}
