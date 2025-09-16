import '../models/order_model.dart';
import 'flutter_ahwa_order.dart';

class FlutterAhwaOrdersImplemntation implements FlutterAhwaOrders {
  final List<OrderModel> _orders = [];

  @override
  void addOrder(OrderModel order) {
    _orders.add(order);
  }

  @override
  List<OrderModel> getPendingOrders() {
    return _orders.where((o) => !o.isCompleted).toList();
  }

  @override
  void markOrderCompleted(OrderModel order) {
    order.markCompleted();
  }

  @override
  Map<String, int> generateSalesReport() {
    final Map<String, int> report = {};
    for (var order in _orders) {
      report[order.drink.name] = (report[order.drink.name] ?? 0) + 1;
    }
    return report;
  }
}
