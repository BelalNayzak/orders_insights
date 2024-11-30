import 'package:orders_insights/core/src/app_export.dart';

abstract class {{name.pascalCase()}}RemoteDs {
  Future<Either<Failure, {{name.pascalCase()}}Model>> foo({required {{name.pascalCase()}}BodyModel {{name.camellCase()}}BodyModel});

  // ...
}

class {{name.pascalCase()}}RemoteDsImpl implements {{name.pascalCase()}}RemoteDs {
  @override
  Future<Either<Failure, {{name.pascalCase()}}Model>> foo({required {{name.pascalCase()}}BodyModel {{name.camellCase()}}BodyModel}) async {
    try {
      final Response res = await apiService.post(  // TODO: set your right CRUD operation
        endPoint: ApiEndpoints.baseUrl, // TODO: put your end point instead
        body: {{name.camellCase()}}BodyModel.toJson(),
      );

      return Right({{name.pascalCase()}}Model.fromJson(res.data));
    } catch (e) {
     return Left(ErrorHandler.handle(e).failure);
    }
  }

  // ...
}