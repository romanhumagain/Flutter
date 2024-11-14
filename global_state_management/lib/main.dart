import 'package:flutter/material.dart';
import 'package:global_state_management/pages/gsm1.dart';
import 'package:global_state_management/provider/couter_provider.dart';
import 'package:global_state_management/provider/list_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => CouterProvider()),
      ChangeNotifierProvider(create: (context) => ListProvider()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Gsm1(),
    );
  }
}
