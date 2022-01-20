import 'package:aplle_shop_ui_lesson/pages/get_started_task_ui_page.dart';
import 'package:aplle_shop_ui_lesson/pages/gridtile_page.dart';
import 'package:aplle_shop_ui_lesson/pages/home_page.dart';
import 'package:aplle_shop_ui_lesson/pages/sign_in_task_ui_page.dart';
import 'package:aplle_shop_ui_lesson/pages/task_ui.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black
      ),
      home: GridTilePage(),
      routes: {
        HomePage.id: (context) => const HomePage(),
        TaskUIPage.id: (context) => const TaskUIPage(),
        GetStartedTaskUiPage.id: (context) => const GetStartedTaskUiPage(),
        SignInTaskUIPage.id: (context) => const SignInTaskUIPage(),
      },
    );
  }
}