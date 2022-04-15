import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/models/counter.dart';
import 'package:provider_example/models/shipping_cart.dart';
import 'package:provider_example/screens/home.dart';
import 'package:provider_example/screens/second_screen.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => Counter()),
    ChangeNotifierProvider(create: (_) => ShoppingCart()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const MyHomePage(),
          '/second': (context) => const SecondPage(),
        });
  }
}
