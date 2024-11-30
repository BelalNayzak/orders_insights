import 'package:orders_insights/core/src/app_exports.dart';

class OrdersDataSource {
  Future<List<OrderModel>> fetchOrders() async {
    final String jsonString = await rootBundle.loadString('assets/orders.json');
    final List<dynamic> jsonData = json.decode(jsonString);
    return jsonData.map((order) => OrderModel.fromJson(order)).toList();
  }
}
