import 'package:orders_insights/core/src/app_exports.dart';

class OrdersCubit extends Cubit<Map<String, dynamic>> {
  final OrdersRepository repository;

  OrdersCubit(this.repository) : super({});

  /// Load orders and emit metrics, chart data, and the raw orders list.
  Future<void> loadOrders() async {
    try {
      final orders = await repository.getOrders(); // Returns List<OrderModel> from the repository
      final metrics = await repository.getMetrics(orders);
      final chartData = _groupOrdersByDate(orders);

      emit({
        'metrics': metrics,
        'chartData': chartData,
        'orders': orders,
      });
    } catch (e) {
      emit({'error': e.toString()});
    }
  }

  /// Group orders by date and return a list of `OrderData` for charting.
  List<OrderData> _groupOrdersByDate(List<OrderModel> orders) {
    final Map<DateTime, int> groupedData = {};

    for (var order in orders) {
      final date = order.registered.toLocal(); // Use `DateTime` from OrderModel
      final day = DateTime(date.year, date.month, date.day);
      groupedData[day] = (groupedData[day] ?? 0) + 1;
    }

    return groupedData.entries
        .map((entry) => OrderData(entry.key, entry.value))
        .toList()
      ..sort((a, b) => a.date.compareTo(b.date));
  }
}
