import 'package:flutter/material.dart';
import 'package:grocery/util/routes.dart';
import 'screen/nav/view/navbar_view.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Routes.key,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Gilroy",
      ),
      debugShowCheckedModeBanner: false,
      home: const NavBarView(),
    );
  }
}
