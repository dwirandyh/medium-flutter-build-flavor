import 'package:flutter/material.dart';
import 'package:medium_build_flavor/app_config.dart';
import 'package:medium_build_flavor/home_page.dart';

void main() async {
  AppConfig.create(
    appName: "Dev Flavor Example",
    baseUrl: "https://dev.dwirandyh.com",
    primaryColor: Colors.yellow,
    flavor: Flavor.prod,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Dev',
      theme: ThemeData(
        primarySwatch: AppConfig.shared.primaryColor,
      ),
      home: const HomePage(),
    );
  }
}
