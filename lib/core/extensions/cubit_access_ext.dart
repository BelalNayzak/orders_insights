import 'package:orders_insights/core/src/app_exports.dart';

extension CubitAccessExt on BuildContext {
  OrdersCubit get ordersCubit => read<OrdersCubit>();
}