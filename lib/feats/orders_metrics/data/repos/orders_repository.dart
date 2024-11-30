import 'package:orders_insights/core/src/app_exports.dart';

class OrdersRepository {
  final OrdersDataSource dataSource;

  OrdersRepository(this.dataSource);

  Future<List<OrderModel>> getOrders() => dataSource.fetchOrders(); // Return List<OrderModel>

  Future<Map<String, dynamic>> getMetrics(List<OrderModel> orders) async {
    final totalOrders = orders.length;
    final totalReturns = orders.where((order) => order.status == 'RETURNED').length;
    final avgPrice = orders
        .map((order) => order.price)
        .reduce((a, b) => a + b) /
        totalOrders;

    return {
      'totalOrders': totalOrders,
      'totalReturns': totalReturns,
      'averagePrice': avgPrice.toStringAsFixed(2),
    };
  }

  List<Map<String, dynamic>> getChartData(List<OrderModel> orders) {
    final groupedByDate = <DateTime, int>{};
    for (var order in orders) {
      final date = DateTime(order.registered.year, order.registered.month, order.registered.day);
      groupedByDate[date] = (groupedByDate[date] ?? 0) + 1;
    }

    return groupedByDate.entries
        .map((entry) => {'date': entry.key, 'count': entry.value})
        .toList();
  }
}
