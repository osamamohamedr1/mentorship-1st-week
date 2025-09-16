import 'ahwa_manger.dart';
import 'models/drink_model.dart';
import 'models/order_model.dart';
import 'repos/flutter_ahwa_orders_impl.dart';

void main() {
  final repo = FlutterAhwaOrdersImplemntation();
  final manager = FlutterAhwaManager(repo);

  manager.addNewOrder(
    OrderModel(
      customerName: 'Ali',
      drink: HibiscusTea(),
      specialInstructions: 'extra mint',
    ),
  );

  manager.addNewOrder(OrderModel(customerName: 'Mona', drink: TurkishCoffee()));
  manager.addNewOrder(OrderModel(customerName: 'Sara', drink: Shai()));

  print('--- Pending Orders ---');
  for (var o in manager.viewPendingOrders()) {
    print('${o.customerName} ordered ${o.drink.name}');
  }

  // Complete first order
  var firstOrder = manager.viewPendingOrders().first;
  manager.completeOrder(firstOrder);

  print('\n--- Pending After Completion ---');
  for (var o in manager.viewPendingOrders()) {
    print('${o.customerName} ordered ${o.drink.name}');
  }

  print('\n--- Sales Report ---');
  print(manager.viewSalesReport());
}
