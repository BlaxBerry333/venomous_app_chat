class Tools {
  Tools._();

  static bool toBoolean(dynamic data) {
    String str = data.toString();
    return str != '0' && str != 'false' && str != '';
  }
}
