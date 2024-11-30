import 'package:orders_insights/core/src/app_exports.dart';

class Route404 extends StatelessWidget {
  const Route404({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Icon(Icons.not_interested),
          const HSpace(32),
          Text(
            'Page Not Found',
            textAlign: TextAlign.center,
            style: AppTextStyles.headline2,
          ),
          const HSpace(11),
          Text(
            'Page Not Found!',
            textAlign: TextAlign.center,
            style: AppTextStyles.bodyText2,
          ),
          const HSpace(30),
          PrimaryButton(
            onPressed: () => goRouter.push(AppPaths.metricsScreen),
            title: 'Go Back',
            height: 45,
            width: 110,
          ),
        ],
      ),
    );
  }
}
