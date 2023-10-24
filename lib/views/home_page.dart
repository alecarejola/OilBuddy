import 'package:flutter/material.dart';
import 'package:oil_buddy/views/shows_page.dart';

class OilBuddy extends StatelessWidget {
  const OilBuddy({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OilBuddy',
      theme: ThemeData(primaryColor: Colors.grey[800]),
      home: const HomePage(title: 'OilBuddy'),
    );
  }
}
