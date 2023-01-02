import 'package:flutter/material.dart';
import 'package:wiztecbd_flutter_intern_task_assessment/pages/home_page.dart';
import 'package:wiztecbd_flutter_intern_task_assessment/utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // primaryColor: const Color(0xff10AB83),
        primarySwatch: customMaterialColor,
      ),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => const HomePage(),
      },
    );
  }
}
