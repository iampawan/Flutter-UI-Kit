class FetchDataException implements Exception {
  String message;
  FetchDataException(this.message);

  @override
  String toString() {
    // TODO: implement toString
    return "Exception: $message";
  }
}
