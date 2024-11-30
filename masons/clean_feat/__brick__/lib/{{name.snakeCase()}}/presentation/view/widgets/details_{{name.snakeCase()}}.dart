import 'package:orders_insights/core/src/app_export.dart';

class Details{{name.pascalCase()}} extends StatelessWidget {
  const Details{{name.pascalCase()}}({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => {{name.pascalCase()}}Cubit()..initGridPlutoData(),
    /// Master Customer Order Body
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
          color: whiteColor,
          boxShadow: [
            BoxShadow(
                color: kTextFiledColor.withOpacity(0.25),
                blurRadius: 4)
          ],
          borderRadius: BorderRadius.circular(4)),
      child: BlocBuilder<{{name.pascalCase()}}Cubit,{{name.pascalCase()}}State>(
          builder: (context, state) {
              return Column(
                children: [
                  Container(
                      width: context.width,
                      margin: const EdgeInsets.symmetric(horizontal: 2),
                      child: FiltersHeaderPreviousSales(
                        addNewOnPressed: () {
                          context.read<ActiveTabsCubit>().addActiveTab(
                              ActiveTabModel(
                                  name: 'customer_orders',
                                  routeName: AppPaths.customerOrderScreen,
                                  isOpenNow: true));
                        },
                        columnsPluto: context.read<{{name.pascalCase()}}Cubit>().columnsPluto,
                        rowsPluto: context.read<{{name.pascalCase()}}Cubit>().rowsPluto,
                        rowData: context.read<{{name.pascalCase()}}Cubit>().rowData,
                        currentYearCheckBoxOnPress: context.read<{{name.pascalCase()}}Cubit>().changeCurrentYearCheckBoxCO,
                        onlyActiveCheckBoxOnPress: context.read<{{name.pascalCase()}}Cubit>().changeOnlyActiveCheckBoxCO,
                        onlyNotCancelledCheckBoxOnPress: context.read<{{name.pascalCase()}}Cubit>().changeOnlyNotCancelledCheckBoxCO,
                        currentYearCheckBox: context.read<{{name.pascalCase()}}Cubit>().currentYearCheckBox,
                        onlyActiveCheckBox: context.read<{{name.pascalCase()}}Cubit>().onlyActiveCheckBox,
                        onlyNotCancelledCheckBox: context.read<{{name.pascalCase()}}Cubit>().onlyNotCancelledCheckBox,
                      )),

                  /// custom grid products
                  const {{name.pascalCase()}}Grid(offstage: false),
                ],
              );
          }),
    ));
  }
}