import 'package:flutter/material.dart';
import 'package:fvs/router/RouterConstants.dart';
import 'package:fvs/scan/scan_page.dart';
class MainRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    Widget body;
    switch (settings.name) {
      case RouterConstants.ScanPageRoute:
      body=const ScanPage();
      default:
        body = Container();
    }

    return MaterialPageRoute(builder: (context) => body, settings: settings);
  }
}
