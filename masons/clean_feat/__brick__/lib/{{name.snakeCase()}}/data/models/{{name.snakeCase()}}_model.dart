import 'package:orders_insights/core/src/app_export.dart';

class {{name.pascalCase()}}Model extends Equatable {
  String? s;

  {{name.pascalCase()}}Model({this.s});

  {{name.pascalCase()}}Model.fromJson(Map<String, dynamic> json) {
    s = json['s'];
  }

  Map<String, dynamic> toJson({{name.pascalCase()}}Model {{name.camelCase()}}Model) {
    Map<String, dynamic> json = {
      's': {{name.camelCase()}}Model.s,
    };
    return json;
  }

  // Mapping model to entity
  {{name.pascalCase()}}Ent toEntity() {
    return {{name.pascalCase()}}Ent(
      s: s,
    );
  }

  @override
  List<Object?> get props => [s];
}