import 'package:orders_insights/core/src/app_export.dart';

abstract class {{name.pascalCase()}}Cont {

  Future<Either<Failure, {{name.pascalCase()}}Ent>> foo({required {{name.pascalCase()}}BodyModel {{name.camellCase()}}BodyModel});

}