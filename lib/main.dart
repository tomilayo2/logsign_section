import 'package:flutter/material.dart';
import 'package:logsign_section/create_account.dart';
import 'package:logsign_section/screens/go_back.dart';
import 'package:logsign_section/screens/signup_screen.dart';

import 'screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => HomePage(), // Home route
        '/signup_screen': (context) => SignupScreen(),
        '/login_screen': (context) => GoBack()
        // Add more routes here if needed
      },
    );
  }
}

