import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _categoryFilter = '';
  String get categoryFilter => _categoryFilter;
  set categoryFilter(String value) {
    _categoryFilter = value;
  }

  String _genderFilter = '';
  String get genderFilter => _genderFilter;
  set genderFilter(String value) {
    _genderFilter = value;
  }

  final _getSharksByAmountInvestedManager =
      FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> getSharksByAmountInvested({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _getSharksByAmountInvestedManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearGetSharksByAmountInvestedCache() =>
      _getSharksByAmountInvestedManager.clear();
  void clearGetSharksByAmountInvestedCacheKey(String? uniqueKey) =>
      _getSharksByAmountInvestedManager.clearRequest(uniqueKey);
}
