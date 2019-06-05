
class GraphQLException implements Exception {
  GraphQLException(this.message);
  final message;
  String toString() => "GraphQLException: $message";
}
