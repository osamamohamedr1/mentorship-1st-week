import 'drink_model.dart';

class OrderModel {
  final String customerName;
  final DrinkModel drink;
  final String specialInstructions;
  bool _isCompleted = false;

  OrderModel({
    required this.customerName,
    required this.drink,
    this.specialInstructions = '',
  });

  bool get isCompleted => _isCompleted;

  void markCompleted() {
    _isCompleted = true;
  }
}
