import 'package:orders_insights/core/src/app_export.dart';

class {{name.pascalCase()}}Screen extends StatelessWidget {
  {{name.pascalCase()}}Screen({super.key});



  @override
  Widget build(BuildContext context) {
    return CustomManagementSystem(
      scaffoldKey: _scaffoldKey,

      /// Active Tabs screen
      activeTabs: ActiveTabs(
        onOneLine: false,
        headerPagination: const CustomHeaderPagination(isNew: true),
        actionButtons: CustomActionButtonsActiveTab(
          isNew: true,
          onSave: () {
            if (context.read<{{name.pascalCase()}}Cubit>().formKey.currentState!.validate()) {
              context.read<{{name.pascalCase()}}Cubit>().formKey.currentState!.save();
              return true;
            }
            return false;
          },
          onAdd: () {
            context.read<ActiveTabsCubit>().addActiveTab(
              ActiveTabModel(
                name: '{{name.snakeCase()}}',
                routeName: AppPaths.{{name.camelCase()}}Screen,
                isOpenNow: true,
              ),
            );
          },
          onReset: () {
          context.read<{{name.pascalCase()}}Cubit>().formKey.currentState!.reset();
          },
          isEditing: context.read<{{name.pascalCase()}}Cubit>().isEditing,
          data: context.read<PlutoGridCubit>().rowData,
          rowsPluto: context.read<PlutoGridCubit>().rowsPluto,
          columnsPluto: context.read<PlutoGridCubit>().columnsPluto,
        ),
      ),
      screenBody: const Master{{name.pascalCase()}}Body(),
      /// Bottom Tab Bar for Customer Order
      bottomNavigationBar: const CustomBottomTabBar(),
    );
  }
}
