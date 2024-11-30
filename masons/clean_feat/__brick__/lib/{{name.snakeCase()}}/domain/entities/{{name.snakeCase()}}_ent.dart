import 'package:orders_insights/core/src/app_export.dart';

class {{name.pascalCase()}}Ent extends Equatable {
  final String? s;

  const {{name.pascalCase()}}Ent({required this.s});

  @override
  List<Object?> get props => [s];
}
