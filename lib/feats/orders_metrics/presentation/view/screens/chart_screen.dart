import 'package:orders_insights/core/src/app_exports.dart';
import 'package:intl/intl.dart';

class OrdersChartScreen extends StatelessWidget {
  const OrdersChartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Orders Chart")),
      body: BlocBuilder<OrdersCubit, Map<String, dynamic>>(
        builder: (context, state) {
          // Check for errors
          if (state.containsKey('error')) {
            return Center(child: Text('Error: ${state['error']}'));
          }

          // Check if chart data is available
          if (state.containsKey('chartData')) {
            final chartData = state['chartData'] as List<OrderData>;

            return Center(
              child: SfCartesianChart(
                primaryXAxis: DateTimeAxis(
                  dateFormat: DateFormat.yMMM(),
                  title: AxisTitle(text: "Date"),
                ),
                primaryYAxis: NumericAxis(
                  title: AxisTitle(text: "Number of Orders"),
                ),
                tooltipBehavior: TooltipBehavior(enable: true),
                series: <CartesianSeries<OrderData, DateTime>>[
                  ColumnSeries<OrderData, DateTime>(
                    dataSource: chartData,
                    xValueMapper: (OrderData data, _) => data.date,
                    yValueMapper: (OrderData data, _) => data.ordersCount,
                    name: 'Orders',
                    color: Colors.blue,
                  ),
                ],
              ),
            );
          }

          // Display loading indicator if data is still loading
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}