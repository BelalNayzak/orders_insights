import 'package:orders_insights/core/src/app_export.dart';

class {{name.pascalCase()}}UseCase {
  final {{name.pascalCase()}}Cont {{name.camelCase()}}Cont;

  {{name.pascalCase()}}UseCase(this.{{name.camelCase()}}Cont);

  Future<Either<Failure, {{name.pascalCase()}}Ent>> call({required {{name.pascalCase()}}BodyModel {{name.camelCase()}}BodyModel}) async {
    return await {{name.camelCase()}}Cont.func({{name.camelCase()}}BodyModel: {{name.camelCase()}}BodyModel);
  }
}