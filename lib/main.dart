import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:holidays_app/utils/dependncy.dart';
import 'package:holidays_app/view/info.dart';
import 'package:holidays_app/view/splachScreens/splachScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
Dependncy.initDependncy();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplachScreen(),
    );
  }
}
