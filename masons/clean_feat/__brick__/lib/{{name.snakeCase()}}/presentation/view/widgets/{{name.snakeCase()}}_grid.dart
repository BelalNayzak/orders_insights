import 'package:orders_insights/core/src/app_export.dart';
import 'package:pluto_grid/pluto_grid.dart';

class {{name.pascalCase()}}Grid extends StatelessWidget {
  const {{name.pascalCase()}}Grid({super.key, required this.offstage});
  final bool offstage;
  final double rowHeight = 40;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<{{name.pascalCase()}}Cubit,{{name.pascalCase()}}State>(builder: (context, state) {
      return SizedBox(
        height: 13.5 * rowHeight, // 16 length for grid cell + 2.5 for border && header && footer = 18.5
        child: PlutoGrid(
          columns: context.read<{{name.pascalCase()}}Cubit>().columnsPluto,
          rows: context.read<{{name.pascalCase()}}Cubit>().rowsPluto,
          onLoaded: context.read<{{name.pascalCase()}}Cubit>().onLoadedPluto,
          onRowDoubleTap: (event) {
            // Get the first cell value from the tapped row
            final firstCellValue = event
                .row
                .cells[context
                .read<{{name.pascalCase()}}Cubit>()
                .columnsPluto[1]
                .field]!
                .value;
            context.read<ActiveTabsCubit>().addActiveTab(ActiveTabModel(
                name: 'request - $firstCellValue'
                    .replaceRange(0, 'request'.length , 'request'.tr(context),),
                routeName: AppPaths.previous{{name.pascalCase()}}Screen,
                isOpenNow: true));
          },
          configuration: PlutoGridConfiguration(
            enableMoveDownAfterSelecting: true,
            style: PlutoGridStyleConfig(
              rowHeight: rowHeight,
              gridBorderRadius: BorderRadius.circular(4),
              cellTextStyle:
              AppTextStyles.styleRegular12(context, color: kTextColor),
              columnTextStyle:
              AppTextStyles.styleRegular12(context, color: whiteColor),
              iconSize: 12,
              defaultColumnFilterPadding:
              const EdgeInsets.symmetric(horizontal: 10),
              iconColor: dividerColor,
              activatedColor: whiteColor,
              activatedBorderColor: kPrimaryColor,
              disabledIconColor: dividerColor,
              borderColor: dividerColor,
              gridBorderColor: transparent,
            ),
            scrollbar: const PlutoGridScrollbarConfig(
              scrollbarThickness: 5,
              scrollBarColor: kCardGreenColor,
              scrollbarThicknessWhileDragging: 20,
            ),
          ),
          rowColorCallback: (rowColorContext) {
            if (rowColorContext.rowIdx % 2 == 0) {
              return whiteColor;
            }
            return kColapsColor;
          },
          createFooter: (stateManager) {
            stateManager.setPageSize(16, notify: false);
            return PlutoPagination(stateManager, pageSizeToMove: 1);
          },
        ),
      );
    });
  }
}
