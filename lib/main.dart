import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:talento/screen/employees-screen.dart';

final lightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.light,
    seedColor: Color(0xFF6C60FF), // Changed to #6C60FF
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);

final darkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: Color(0xFF6C60FF), // Changed to #6C60FF
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);

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
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system, // Uses system setting (light/dark)
      home: EmployeesScreen(),
    );
  }
}

