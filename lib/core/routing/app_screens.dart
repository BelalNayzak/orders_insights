import 'package:orders_insights/core/src/app_exports.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

final GoRouter goRouter = GoRouter(
  observers: [
    MyRoutingObserver(navigatorKey),
  ],
  navigatorKey: navigatorKey,
  initialLocation: AppPaths.metricsScreen,
  routes: [
    GoRoute(
      path: AppPaths.metricsScreen,
      builder: (context, state) {
        return const MetricsScreen();
      },
      routes: [
        GoRoute(
          path: AppPaths.chartScreen,
          builder: (context, state) {
            return const OrdersChartScreen();
          },
        ),
      ],
    ),
  ],
  errorBuilder: (context, state) => Route404(),
  debugLogDiagnostics: true,
);
