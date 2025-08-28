import 'package:flutter/material.dart';
import 'package:flutter_application_crud_app/home.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme),
        colorSchemeSeed: Colors.teal[100],
        appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
      ),
      home: Home(),
    );
  }
}