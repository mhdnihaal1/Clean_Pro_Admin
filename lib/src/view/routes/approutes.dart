import 'dart:io';

import 'package:clean_pro_admin/src/view/error_secreen/error_page.dart';
import 'package:clean_pro_admin/src/view/home/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Route<dynamic>? routes(RouteSettings routeSettings) {
    Widget page;
    switch (routeSettings.name) {
      case '/':
        page = HomePage();
        break;
      default:
        page = const ErrorPage();
    }

    return Platform.isIOS
        ? CupertinoPageRoute<void>(
            settings: routeSettings,
            builder: (BuildContext context) => page,
          )
        : MaterialPageRoute<void>(
            settings: routeSettings,
            builder: (BuildContext context) => page,
          );
  }
}
