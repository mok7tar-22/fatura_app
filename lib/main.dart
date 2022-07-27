import 'package:fatura/views/screens/el3ohda_screen.dart';
import 'package:fatura/views/screens/elwared_screen.dart';
import 'package:fatura/views/screens/home_screen.dart';
import 'package:fatura/views/screens/masrofat_screen.dart';
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
        scaffoldBackgroundColor: const Color.fromRGBO(15, 24, 50, 1.0),
        textTheme: const TextTheme(
          headline1: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white)
        ),
        primarySwatch: Colors.blue,
      ),
      initialRoute:HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        MasrofatScreen.routeName:(context)=> const MasrofatScreen(),
        ElwaredScreen.routeName:(context)=> const ElwaredScreen(),
        El3ohdaScreen.routeName:(context)=> const El3ohdaScreen(),


      },
    );
  }
}



