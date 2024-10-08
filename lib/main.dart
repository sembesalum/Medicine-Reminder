import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicine_reminder/pages/splash_screen/index.dart';
import 'package:medicine_reminder/provider/counter_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context)=> CounterProvider(),),
    ],
    child:  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.teal),
      home: SplashScreen(),
    ),
    
    );
  }
}