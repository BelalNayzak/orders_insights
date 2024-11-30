import 'package:orders_insights/core/src/app_export.dart';

class Master{{name.pascalCase()}}Body extends StatelessWidget {
  const Master{{name.pascalCase()}}Body({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => {{name.pascalCase()}}Cubit()),
        BlocProvider(create: (context) => PlutoGridCubit()..initGridPlutoData()),
      ],
      child: Expanded(
        child: SingleChildScrollView(
          child: Form(
            key: context.read<{{name.pascalCase()}}Cubit>().formKey,
            child: Column(
              children: [
                /// Customer Orders Tabs
                const {{name.pascalCase()}}Tabs(),
        
                /// Master Customer Order Body
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: kTextFiledColor.withOpacity(0.25),
                        blurRadius: 4,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: BlocBuilder<PlutoGridCubit, PGridState>(
                    builder: (context, state) {
                      if (state is InitPlutoGridLoading) {
                        return const IxLoading();
                      } else {
                        return BlocBuilder<{{name.pascalCase()}}Cubit, {{name.pascalCase()}}State>(
                          builder: (context, state) {
                            if (state is SelectCurrentTab{{name.pascalCase()}}) {
                              return _masterBody(context, currentTab: state.selectCurrentTab);
                            } else {
                              return _masterBody(
                                context,
                                currentTab: context.read<{{name.pascalCase()}}Cubit>().selectCurrentTab,
                              );
                            }
                          },
                        );
                      }
                    },
                  ),
                ),

                const HSpacer(40),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _masterBody(BuildContext context, {required int currentTab}) {
    return Column(
      key: key,
      children: [
        /// Fields for tabs
        currentTab == 0
            ? TabMain{{name.pascalCase()}}Body()
            : currentTab == 1
            ? const TabOtherData{{name.pascalCase()}}Body()
            : currentTab == 2
            ? const TabAdditionalData{{name.pascalCase()}}Body()
            : currentTab == 3
            ? const TabInstallments{{name.pascalCase()}}Body()
            : currentTab == 4
            ? const TabCreditCardData{{name.pascalCase()}}Body()
            : currentTab == 5
            ? const TabFromAccounts{{name.pascalCase()}}Body()
            : currentTab == 6
            ? const TabTakeDown{{name.pascalCase()}}Body()
            : currentTab == 7
            ? const TabTax{{name.pascalCase()}}Body()
            : const TabSalesBurdens{{name.pascalCase()}}Body(),

       /// custom grid products
         SalesGlobalPlutoGrid(
            offstage: currentTab == 1 || currentTab == 2,
        ),
      ],
    );
  }
}
