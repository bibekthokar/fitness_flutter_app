import 'package:fitness_mobile/config/theme.dart';
import 'package:fitness_mobile/screens/screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness App',
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (_) => OnboardScreen(),
        WelcomeScreen.routeName: (_) => WelcomeScreen(),
        SignupScreen.routeName: (_) => SignupScreen(),
      },
    );
  }
}
