// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:xetienchuyen/src/app/presentation/routes/routes_navigator.dart';
import 'package:xetienchuyen/src/app/presentation/screens/auth/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashServices {
  isUserlogin(BuildContext context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    await Future.delayed(const Duration(seconds: 2));
    final String? userId = prefs.getString('username');
    log("username $userId");

    if (userId != null) {
    } else {
     
      RouteNavigator.pushandremoveroute(context, const LoginScreen());
    }
  }
}
