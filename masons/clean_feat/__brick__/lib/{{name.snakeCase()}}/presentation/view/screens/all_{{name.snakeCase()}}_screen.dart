import 'package:orders_insights/core/src/app_export.dart';

class All{{name.pascalCase()}}Screen extends StatelessWidget {
  All{{name.pascalCase()}}Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomManagementSystem(
      scaffoldKey: _scaffoldKey,

      haveStack: false,
      /// Active Tabs screen
      activeTabs: const ActiveTabs(
        isPrevOrNew: false,
        onOneLine: false,
        actionButtons: TimeWidget(),
      ),
      screenBody: Details{{name.pascalCase()}}(),
    );
  }
}