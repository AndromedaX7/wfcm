//
// Generated file. Do not edit.
//

// ignore: unused_import
import 'dart:ui';

import 'package:fluttertoast/fluttertoast_web.dart';
import 'package:web_view_open/web/webviewopen.dart';

import 'package:flutter_web_plugins/flutter_web_plugins.dart';

// ignore: public_member_api_docs
void registerPlugins(PluginRegistry registry) {
  FluttertoastWebPlugin.registerWith(registry.registrarFor(FluttertoastWebPlugin));
  WebviewopenPlugin.registerWith(registry.registrarFor(WebviewopenPlugin));
  registry.registerMessageHandler();
}
