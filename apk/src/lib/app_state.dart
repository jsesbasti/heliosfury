import 'package:flutter/material.dart';
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

  int _sliderval = 1;
  int get sliderval => _sliderval;
  set sliderval(int value) {
    _sliderval = value;
  }

  bool _sliderbool = false;
  bool get sliderbool => _sliderbool;
  set sliderbool(bool value) {
    _sliderbool = value;
  }
}
