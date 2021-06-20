import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'src/models/appdata.dart';

// Importing views
import 'src/pages/homepage.dart';

/* The main file will be responsible for routing */


void main () => runApp(
  MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => AppData()),
    ],
    child: const MyApp(),
  )
);

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const HomePage(),
      },
      initialRoute: '/',
    );
  }
}