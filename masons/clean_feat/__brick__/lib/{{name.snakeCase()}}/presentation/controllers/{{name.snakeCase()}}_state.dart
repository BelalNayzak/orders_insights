import 'package:orders_insights/core/src/app_export.dart';

part of '{{name.snakeCase()}}_cubit.dart';

extension {{name.pascalCase()}}StateExt on {{name.pascalCase()}}State {
  bool get isInitial => status == LoaderStatus.initial;
  bool get isLoading => status == LoaderStatus.loading;
  bool get isSuccess => status == LoaderStatus.loaded;
  bool get isError => status == LoaderStatus.error;
}

@immutable
class {{name.pascalCase()}}State {
  final LoaderStatus? status;
  final {{name.pascalCase()}}Ent? ent;
  final String? errMsg;

  const {{name.pascalCase()}}State({
    this.status = LoaderStatus.initial,
    this.ent = null,
    this.errMsg = null,
  });

  // CopyWith method for creating updated versions of {{name.pascalCase()}}State
  {{name.pascalCase()}}State copyWith({
    LoaderStatus? status,
    {{name.pascalCase()}}Ent? ent,
    String? errMsg,
  }) {
    return {{name.pascalCase()}}State(
      status: status ?? this.status,
      ent: ent ?? this.ent,
      errMsg: errMsg ?? this.errMsg,
    );
  }

  // Implementing toJson method
  Map<String, dynamic> toJson() {
    return {
      'status': status?.index,
      'ent': ent?.toJson(),
      'errMsg': errMsg,
    };
  }

  // Implementing fromJson factory constructor
  factory {{name.pascalCase()}}State.fromJson(Map<String, dynamic> json) {
    return {{name.pascalCase()}}State(
      status: json['status'] != null ? LoaderStatus.values[json['status']] : LoaderStatus.initial,
      ent: json['ent'] != null ? {{name.pascalCase()}}Ent.fromJson(json['ent']) : null,
      errMsg: json['errMsg'],
    );
  }
}
