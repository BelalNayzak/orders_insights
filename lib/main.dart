import 'package:orders_insights/core/src/app_exports.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initGetIt();
  Bloc.observer = MyBlocObserver();

  runApp(
      MultiBlocProvider(
        providers: [
          BlocProvider<OrdersCubit>(create: (_) => OrdersCubit(getIt())..loadOrders()),
        ],
        child: MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: goRouter,
    );
  }
}
