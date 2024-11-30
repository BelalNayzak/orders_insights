
///
/// TODO: 1. replace each "&#x2F;" with "/"
/// TODO: 2. add these exports to the app_exports file then remove comments
///
// export 'package:orders_insights/{{path}}{{name.snakeCase()}}/presentation/view/screens/{{name.snakeCase()}}_screen.dart';
// export 'package:orders_insights/{{path}}{{name.snakeCase()}}/data/models/{{name.snakeCase()}}_model.dart';
// export 'package:orders_insights/{{path}}{{name.snakeCase()}}/domain/entities/{{name.snakeCase()}}_ent.dart';
// export 'package:orders_insights/{{path}}{{name.snakeCase()}}/domain/contracts/{{name.snakeCase()}}_cont.dart';
// export 'package:orders_insights/{{path}}{{name.snakeCase()}}/data/datasources/{{name.snakeCase()}}_remote_ds.dart';
// export 'package:orders_insights/{{path}}{{name.snakeCase()}}/presentation/controllers/{{name.snakeCase()}}_cubit.dart';
// export 'package:orders_insights/{{path}}{{name.snakeCase()}}/presentation/controllers/{{name.snakeCase()}}_state.dart';

///
/// TODO: add these paths to the AppPaths then remove comments
///

/// {{name.pascalCase()}}
// static const all{{name.pascalCase()}} = '${tab}/all{{name.pascalCase()}}';
// static const {{name.camelCase()}} = '${tab}/new{{name.pascalCase()}}';
// static const previous{{name.pascalCase()}} = '${tab}/previous{{name.pascalCase()}}';

///
/// TODO: add these pages to the AppPages then remove comments
///

/// {{name.pascalCase()}}
// GoRoute(
//   path: AppPaths.all{{name.pascalCase()}}Screen,
//   builder: (context, state) {
//     return BlocProvider(
//       create: (context) => getIt<{{name.pascalCase()}}Cubit>(),
//       child: const all{{name.pascalCase()}}Screen(),
//     );
//   },
// ),
// GoRoute(
//   path: AppPaths.{{name.camelCase()}}Screen,
//   builder: (context, state) {
//     return BlocProvider.value(
//       value: (context) => getIt<{{name.pascalCase()}}Cubit>(),
//       child: const {{name.pascalCase()}}Screen(),
//     );
//   },
// ),
// GoRoute(
//   path: AppPaths.previuos{{name.pascalCase()}}Screen,
//   builder: (context, state) {
//     return BlocProvider(
//       create: (context) => getIt<{{name.pascalCase()}}Cubit>(),
//       child: const previous{{name.pascalCase()}}Screen(),
//     );
//   },
// ),

///
/// TODO: add this to the SideMenu (tree) in the suitable place
///

// CustomListTitle(
//   title: '{{name.snakeCase()}}'.tr(context),
//   onTap: () {
//     context.read<ActiveTabsCubit>().addActiveTab(
//       ActiveTabModel(
//         name: 'all_{{name.snakeCase()}}'.tr(context),
//         routeName: AppPaths.all{{name.pascalCase()}}Screen,
//         isOpenNow: true,
//       ),
//     );
//   },
// ),

///
/// TODO: copy the translation  of the feature in both ar & en files
///

// {
//   '{{name.snakeCase()}}' : '{{name}}',
//   'all_{{name.snakeCase()}}' : '{{name}}',
// }

///
/// TODO: DON'T add this cubit to the BlocProviderList file
/// You already did it above the screen itself
///

// BlocProvider<{{name.pascalCase()}}Cubit>(
//     create: (context) => {{name.pascalCase()}}Cubit(),
// ),
