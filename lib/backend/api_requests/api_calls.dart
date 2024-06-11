import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SearchTrabalhosCientificosTituloCall {
  static Future<ApiCallResponse> call({
    String? searchTitulo = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'searchTrabalhosCientificosTitulo',
      apiUrl:
          'https://uwszrbdongrpxfaqvjtp.supabase.co/rest/v1/trabalhosCientificos?titulo=ilike.*$searchTitulo*&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InV3c3pyYmRvbmdycHhmYXF2anRwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU5NjYxMzQsImV4cCI6MjAzMTU0MjEzNH0.n-0m97iQMz6dVYIRuJnKDpMVcJ1qPDboF3G1--WKXgU',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InV3c3pyYmRvbmdycHhmYXF2anRwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU5NjYxMzQsImV4cCI6MjAzMTU0MjEzNH0.n-0m97iQMz6dVYIRuJnKDpMVcJ1qPDboF3G1--WKXgU',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SearchTrabalhosCientificosNomeCall {
  static Future<ApiCallResponse> call({
    String? searchNome = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'searchTrabalhosCientificosNome',
      apiUrl:
          'https://uwszrbdongrpxfaqvjtp.supabase.co/rest/v1/trabalhosCientificos?nome=ilike.*$searchNome*&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InV3c3pyYmRvbmdycHhmYXF2anRwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU5NjYxMzQsImV4cCI6MjAzMTU0MjEzNH0.n-0m97iQMz6dVYIRuJnKDpMVcJ1qPDboF3G1--WKXgU',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InV3c3pyYmRvbmdycHhmYXF2anRwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU5NjYxMzQsImV4cCI6MjAzMTU0MjEzNH0.n-0m97iQMz6dVYIRuJnKDpMVcJ1qPDboF3G1--WKXgU',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
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

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
