import 'package:orders_insights/core/src/app_export.dart';

class Previous{{name.pascalCase()}}Screen extends StatelessWidget {
  Previous{{name.pascalCase()}}Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomManagementSystem(
      scaffoldKey: _scaffoldKey,

      haveStack: false,

      /// Active Tabs screen
      activeTabs: ActiveTabs(
        onOneLine: false,
        actionButtons: CustomActionButtonsActiveTab(
          data: context.read<PlutoGridCubit>().rowData,
          rowsPluto: context.read<PlutoGridCubit>().rowsPluto,
          columnsPluto: context.read<PlutoGridCubit>().columnsPluto,
          onAdd: () {
            context.read<ActiveTabsCubit>().addActiveTab(
              ActiveTabModel(
                name: '{{name.snakeCase()}}',
                routeName: AppPaths.previous{{name.pascalCase()}}Screen,
                isOpenNow: true,
              ),
            );
          },
          onSave: () {
            if (context.read<{{name.pascalCase()}}Cubit>().formKey.currentState!.validate()) {
              context.read<{{name.pascalCase()}}Cubit>().formKey.currentState!.save();
              return true;
            }
            return false;
          },
          onReset: () {
            context.read<{{name.pascalCase()}}Cubit>().formKey.currentState!.reset();
          },
          isEditing: context.read<{{name.pascalCase()}}Cubit>().isEditing,
        ),
        documentStatus: const CustomDocumentStatus(),
        headerPagination: const CustomHeaderPagination(),
      ),
      screenBody: const Master{{name.pascalCase()}}Body(),
    );
  }
}