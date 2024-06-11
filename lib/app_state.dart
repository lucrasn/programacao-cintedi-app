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

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _temNet = prefs.getBool('ff_temNet') ?? _temNet;
    });
    _safeInit(() {
      _localizacao =
          latLngFromString(prefs.getString('ff_localizacao')) ?? _localizacao;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _temNet = false;
  bool get temNet => _temNet;
  set temNet(bool value) {
    _temNet = value;
    prefs.setBool('ff_temNet', value);
  }

  bool _viewON = false;
  bool get viewON => _viewON;
  set viewON(bool value) {
    _viewON = value;
  }

  bool _viewNome = false;
  bool get viewNome => _viewNome;
  set viewNome(bool value) {
    _viewNome = value;
  }

  bool _viewTitulo = false;
  bool get viewTitulo => _viewTitulo;
  set viewTitulo(bool value) {
    _viewTitulo = value;
  }

  LatLng? _localizacao = const LatLng(-7.235586199999999, -35.8626637);
  LatLng? get localizacao => _localizacao;
  set localizacao(LatLng? value) {
    _localizacao = value;
    value != null
        ? prefs.setString('ff_localizacao', value.serialize())
        : prefs.remove('ff_localizacao');
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
