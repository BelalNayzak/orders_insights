import 'package:orders_insights/core/src/app_exports.dart';

final getIt = GetIt.instance;
void initGetIt() {

  getIt.registerFactory<OrdersCubit>(() => OrdersCubit(getIt()));
  getIt.registerFactory<OrdersRepository>(() => OrdersRepository(getIt()));
  getIt.registerFactory<OrdersDataSource>(() => OrdersDataSource());
}
