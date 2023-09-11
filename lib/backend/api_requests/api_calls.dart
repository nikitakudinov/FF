import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetCountriesCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'GetCountries',
      apiUrl: 'https://countriesnow.space/api/v0.1/countries/flag/images',
      callType: ApiCallType.GET,
      headers: {
        'xc-auth':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImJsaW5uYWZlZ0BnbWFpbC5jb20iLCJpZCI6InVzOTRidGJra21lZ29yajEiLCJyb2xlcyI6Im9yZy1sZXZlbC1jcmVhdG9yLHN1cGVyIiwidG9rZW5fdmVyc2lvbiI6IjNiMGU3M2MxODgzOGM0M2Q5YWU5OWY3Njk3YTRhYTc0NTJjODIyYmY3OTdlN2ZiN2QwNDc4ZTFhMDY3NzMxYWRmYzhjNDFkMjhhNzYxODYyIiwiaWF0IjoxNjk0MDk2Njc4LCJleHAiOjE2OTQxMzI2Nzh9.pEbfLbG3pdd1BghTrIGN5GyuqX7gAcNPr75iUIODjAI',
      },
      params: {
        'apiKey':
            "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImJsaW5uYWZlZ0BnbWFpbC5jb20iLCJpZCI6InVzOTRidGJra21lZ29yajEiLCJyb2xlcyI6Im9yZy1sZXZlbC1jcmVhdG9yLHN1cGVyIiwidG9rZW5fdmVyc2lvbiI6IjNiMGU3M2MxODgzOGM0M2Q5YWU5OWY3Njk3YTRhYTc0NTJjODIyYmY3OTdlN2ZiN2QwNDc4ZTFhMDY3NzMxYWRmYzhjNDFkMjhhNzYxODYyIiwiaWF0IjoxNjk0MDk2Njc4LCJleHAiOjE2OTQxMzI2Nzh9.pEbfLbG3pdd1BghTrIGN5GyuqX7gAcNPr75iUIODjAI",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      );
  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.data[:].name''',
        true,
      );
  static dynamic flag(dynamic response) => getJsonField(
        response,
        r'''$.data[:].flag''',
        true,
      );
  static dynamic iso2(dynamic response) => getJsonField(
        response,
        r'''$.data[:].iso2''',
        true,
      );
  static dynamic iso3(dynamic response) => getJsonField(
        response,
        r'''$.data[:].iso3''',
        true,
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
