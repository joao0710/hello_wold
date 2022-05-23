import 'package:flutter/material.dart';
import 'package:hello_world/home_page.dart';
import 'app_controller.dart';
import 'login_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
              primarySwatch: Colors.green,
              brightness: AppController.instance.isDarkTheme
                  ? Brightness.dark
                  : Brightness.light,
            ),
            initialRoute: '/',
            routes: {
              '/': (context) => LoginPage(),
              '/home': (context) => HomePage(),
            },
          );
        });
  }
}
