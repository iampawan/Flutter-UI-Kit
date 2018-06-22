import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter_uikit/services/network_service_response.dart';
import 'package:http/http.dart' as http;

class RestClient {
  Map<String, String> headers = {
    HttpHeaders.CONTENT_TYPE: 'application/json',
    HttpHeaders.ACCEPT: 'application/json',
  };

  Future<MappedNetworkServiceResponse<T>> getAsync<T>(
      String resourcePath) async {
    var response = await http.get(resourcePath);
    return processResponse<T>(response);
  }

  Future<MappedNetworkServiceResponse<T>> postAsync<T>(
      String resourcePath, dynamic data) async {
    var content = json.encoder.convert(data);
    var response =
        await http.post(resourcePath, body: content, headers: headers);
    return processResponse<T>(response);
  }

  MappedNetworkServiceResponse<T> processResponse<T>(http.Response response) {
    if (!((response.statusCode < HttpStatus.OK) ||
        (response.statusCode >= HttpStatus.MULTIPLE_CHOICES) ||
        (response.body == null))) {
      var jsonResult = response.body;
      dynamic resultClass = jsonDecode(jsonResult);

      return new MappedNetworkServiceResponse<T>(
          mappedResult: resultClass,
          networkServiceResponse: new NetworkServiceResponse<T>(success: true));
    } else {
      var errorResponse = response.body;
      return new MappedNetworkServiceResponse<T>(
          networkServiceResponse: new NetworkServiceResponse<T>(
              success: false,
              message: "(${response.statusCode}) ${errorResponse.toString()}"));
    }
  }
}
