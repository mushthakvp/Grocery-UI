import 'package:flutter/material.dart';

class Routes {
  static final key = GlobalKey<NavigatorState>();

  static push({required var screen}) {
    key.currentState?.push(
      PageRouteBuilder(
        transitionsBuilder: (
          BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
          Widget child,
        ) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
        pageBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secondaryAnimation) {
          return screen;
        },
      ),
    );
  }

  static back() {
    key.currentState?.pop();
  }

  static pushReplace({required var screen}) {
    key.currentState?.pushReplacement(
      PageRouteBuilder(
        transitionsBuilder: (
          BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
          Widget child,
        ) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
        pageBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secondaryAnimation) {
          return screen;
        },
      ),
    );
  }

  static pushRemoveUntil({required var screen}) {
    key.currentState?.pushAndRemoveUntil(
      PageRouteBuilder(
        transitionsBuilder: (
          BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
          Widget child,
        ) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
        pageBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secondaryAnimation) {
          return screen;
        },
      ),
      (route) => false,
    );
  }
}
