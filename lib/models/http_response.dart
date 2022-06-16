class HttpResponse<T> {
  bool success;
  int statusCode;
  String message;
  T? data;

  HttpResponse({
    required this.success,
    required this.statusCode,
    required this.message,
    this.data,
  });
}
