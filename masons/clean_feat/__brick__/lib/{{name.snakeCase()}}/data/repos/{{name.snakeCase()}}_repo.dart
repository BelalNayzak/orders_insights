import 'package:orders_insights/core/src/app_export.dart';

class {{name.pascalCase()}}Repo implements {{name.pascalCase()}}Cont {
  final {{name.pascalCase()}}RemoteDs {{name.camelCase()}}RemoteDs;

  {{name.pascalCase()}}Repo(this.{{name.camelCase()}}RemoteDs);

  @override
  Future<Either<Failure, {{name.pascalCase()}}Ent>> foo({required {{name.pascalCase()}}BodyModel {{name.camellCase()}}BodyModel}) async {
    final either = await {{name.camelCase()}}RemoteDs.foo({{name.camellCase()}}BodyModel: {{name.camellCase()}}BodyModel);
    return either.map(({{name.pascallCase()}}Model model) => model.toEntity()); // maps Either<L, Model> to Either<L, Ent>
  }

}