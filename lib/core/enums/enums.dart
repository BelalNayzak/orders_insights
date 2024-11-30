/// Loader status as an enum
enum LoaderStatus { initial, loading, loaded, error }

extension LoaderStatusX on LoaderStatus {
  bool get isInitial => this == LoaderStatus.initial;
  bool get isLoading => this == LoaderStatus.loading;
  bool get isSuccess => this == LoaderStatus.loaded;
  bool get isError => this == LoaderStatus.error;
}