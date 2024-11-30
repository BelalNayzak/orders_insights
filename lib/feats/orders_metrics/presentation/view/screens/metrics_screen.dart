import 'package:orders_insights/core/src/app_exports.dart';

class MetricsScreen extends StatelessWidget {

  const MetricsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Order Metrics')),
      body: BlocBuilder<OrdersCubit, Map<String, dynamic>>(
        builder: (context, state) {
          if (state.isEmpty) {
            return Center(child: CircularProgressIndicator());
          }

          final metrics = state['metrics'];
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Total Orders: ${metrics['totalOrders']}'),
                Text('Total Returns: ${metrics['totalReturns']}'),
                Text('Average Price: \$${metrics['averagePrice']}'),
                PrimaryButton(title: 'Show Chart', onPressed: () => goRouter.push(AppPaths.chartScreen)),
              ],
            ),
          );
        },
      ),
    );
  }
}
