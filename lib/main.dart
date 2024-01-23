import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

//Routes
import 'package:delivery_app/src/route/route.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: routes,
      initialRoute: 'WelcomePage',
      //DisableModeDebugAlert
      debugShowCheckedModeBanner: false,
      //Tema de la App general claro
      theme: ThemeData(
        //disabledColor: const Color.fromRGBO(142, 142, 147, 1.2),
        colorScheme: const ColorScheme.light(
          onPrimary: Color.fromRGBO(255, 140, 0, 1.0),
          primary: Color.fromRGBO(142, 142, 147, 1.2),
          secondary: Color.fromRGBO(10, 31, 68, 1.0),
        ),
        //Background color to app
        scaffoldBackgroundColor: Colors.white,

        primaryTextTheme: GoogleFonts.robotoCondensedTextTheme(),

        //Palette color to buttons
        buttonTheme: ButtonThemeData(
          textTheme: ButtonTextTheme.primary,
          disabledColor: const Color.fromRGBO(142, 142, 147, 1.2),
          hoverColor: Colors.black.withOpacity(0.7),
          colorScheme: const ColorScheme.light(
            onPrimary: Color.fromRGBO(0, 122, 255, 1.0),
            onSecondary: Color.fromRGBO(255, 140, 0, 1.0),
          ),
        ),

        //Tema de la Barra de la app
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
        ),
      ),
      //Comienzo de la App
      // home: const Scaffold(
      //   body: Center(
      //     child: Text('Hello World!'),
      //   ),
      //),
    );
  }
}
