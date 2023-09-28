import 'package:flutter/material.dart';
import 'Inicio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iRemember',
      theme: ThemeData(
        fontFamily: 'Jaldi',
        colorScheme: ColorScheme.fromSeed(
          seedColor: HexColor("5793e0"),
          primary: HexColor("ffffff"),
          surface: HexColor("5793e0"),
          onPrimary: HexColor("5793e0"),
        ),
        useMaterial3: true,
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: HexColor("cccccc"),
            )
          ),
          focusedBorder:OutlineInputBorder(
            borderSide: BorderSide(
                color: HexColor("333333"),
            ),
          ),
          labelStyle: TextStyle(
            color: HexColor("5793E0"),
          )
        )
      ),
      home: const InicioPage(title: 'iRemember'),
    );
  }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}