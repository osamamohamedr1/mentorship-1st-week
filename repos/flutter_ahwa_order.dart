import '../models/order_model.dart';

abstract class FlutterAhwaOrders {
  void addOrder(OrderModel order);
  List<OrderModel> getPendingOrders();
  void markOrderCompleted(OrderModel order);
  Map<String, int> generateSalesReport();
}
