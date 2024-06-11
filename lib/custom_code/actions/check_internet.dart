// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:connectivity_plus/connectivity_plus.dart';

Future<bool> checkInternet() async {
  // Add your function code here!

  var connectivityResult = await Connectivity().checkConnectivity();

  if (connectivityResult == ConnectivityResult.mobile ||
      connectivityResult == ConnectivityResult.wifi ||
      connectivityResult == ConnectivityResult.ethernet ||
      connectivityResult == ConnectivityResult.vpn ||
      connectivityResult == ConnectivityResult.bluetooth ||
      connectivityResult == ConnectivityResult.other) {
    return true;
  } else {
    return false;
  }
}
