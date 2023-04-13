class ApiException implements Exception {
  final String message;

  ApiException({required this.message});
}
