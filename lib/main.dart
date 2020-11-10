import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:worldfunclub/dartin_module.dart';
import 'package:worldfunclub/design.dart';
import 'package:worldfunclub/settings/settings_page.dart';
import 'package:worldfunclub/ui/main_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initDartIn();
  runApp(dispatchRoute());
}

class App extends StatelessWidget {
  static var navigatorKey = GlobalKey<NavigatorState>();

  static var mainKey = GlobalKey<MainPageState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "环球途乐会",
      theme: ThemeData(primarySwatch: Colors.red),
      home: MainPage(mainKey), //key: mainKey
      navigatorKey: navigatorKey,
    );
  }
}


Widget dispatchRoute(){
  switch(window.defaultRouteName){
    case "/":
      return App();
    case "/settings":
      return AppWrapper( SettingsPage());
    default:
      return App();
  }
}

class AppWrapper extends StatelessWidget {
  final Widget widget;
  AppWrapper(this.widget);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "环球途乐会",
      theme: ThemeData(primarySwatch: Colors.red),
      home:  RouteWrapper(widget), //key: mainKey

    );
  }
}
class RouteWrapper  extends StatelessWidget {
  final Widget widget;
  RouteWrapper(this.widget);
  @override
  Widget build(BuildContext context) {
    initDefaultDesignSize(context);
    return widget;
  }
}


const String user_id = "10043";
const String login_token = "fefab20ccaa77ec55bd2593e28415638309d995e";
