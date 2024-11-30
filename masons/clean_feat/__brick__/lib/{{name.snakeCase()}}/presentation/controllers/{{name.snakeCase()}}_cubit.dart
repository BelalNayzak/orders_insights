import 'package:orders_insights/core/src/app_export.dart';

part 'auth_state.dart';

class {{name.pascalCase()}}Cubit extends HydratedCubit<{{name.pascalCase()}}State> {
  {{name.pascalCase()}}Cubit(this.{{name.pascalCase()}}UseCase) : super(const {{name.pascalCase()}}State());

  // use cases
  final {{name.pascalCase()}}UseCase {{name.pascalCase()}}UseCase;

  // vars
  var formKey = GlobalKey<FormState>();
  TextEditingController fooCtrl = TextEditingController();

  Future<void> foo() async {
    emit(state.copyWith(status: LoaderStatus.loading));

    final result = await {{name.camelCase()}}UseCase({{name.camelCase()}}BodyModel: {{name.pascalCase()}}BodyModel(foo: fooCtrl.text.toString()));

    result.fold(
      (failure) {
        emit(state.copyWith(errMsg: failure.errMsgEn, status: LoaderStatus.error));
      },
      (entity) async {
        emit(state.copyWith(ent: entity, status: LoaderStatus.loaded));
      },
    );
  }

  @override
  Future<void> close() {
    fooCtrl.dispose();
    return super.close();
  }

  @override
    {{name.pascalCase()}}State? fromJson(Map<String, dynamic> json) {
    return {{name.pascalCase()}}State.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson({{name.pascalCase()}}State state) {
    return state.toJson();
  }
}
