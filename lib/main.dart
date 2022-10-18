import 'package:flutter/material.dart';
import 'package:test_flutter/pages/Home.dart';
import 'package:test_flutter/pages/Login.dart';
import 'package:test_flutter/pages/admin/RestrictedArea.dart';
import 'package:test_flutter/pages/admin/client/Client.dart';
import 'package:test_flutter/pages/admin/product/Product.dart';
import 'package:test_flutter/pages/product/ListProduct.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        '/home': (context) => Home(),
        '/home/melancia': (context) => ListProduct(),
        '/area-restrita': (context) => RestrictedArea(),
        '/area-restrita/criar-cliente': (context) => Client(),
        '/area-restrita/criar-produto': (context) => Product(),
      },
    );
  }
}
