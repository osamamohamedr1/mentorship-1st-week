import 'models/order_model.dart';
import 'repos/flutter_ahwa_order.dart';

class FlutterAhwaManager {
  final FlutterAhwaOrders _repository;

  FlutterAhwaManager(this._repository);

  void addNewOrder(OrderModel order) {
    _repository.addOrder(order);
  }

  void completeOrder(OrderModel order) {
    _repository.markOrderCompleted(order);
  }

  List<OrderModel> viewPendingOrders() {
    return _repository.getPendingOrders();
  }

  Map<String, int> viewSalesReport() {
    return _repository.generateSalesReport();
  }
}
