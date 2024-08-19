import 'package:flutter/material.dart';
import 'package:expanse_trucker/widgets/expenses.dart';
// import 'package:flutter/services.dart';

var KcolorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 96, 59, 181));
    var kDarkColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 5, 99, 125));

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp
  // ]).then((fn){
    runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        darkTheme: ThemeData.dark().copyWith(
          useMaterial3: true,
          colorScheme: kDarkColorScheme,
          cardTheme: const CardTheme().copyWith(
              color: kDarkColorScheme.secondaryContainer,
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8)),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
            backgroundColor: kDarkColorScheme.primaryContainer,
            foregroundColor: kDarkColorScheme.onPrimaryContainer,
          )),
        ),
        theme: ThemeData().copyWith(
            useMaterial3: true,
            colorScheme: KcolorScheme,
            appBarTheme: const AppBarTheme().copyWith(
                backgroundColor: KcolorScheme.onPrimaryContainer,
                foregroundColor: KcolorScheme.primaryContainer),
            cardTheme: const CardTheme().copyWith(
                color: KcolorScheme.secondaryContainer,
                margin:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8)),
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
              backgroundColor: KcolorScheme.onPrimaryContainer,
              foregroundColor: KcolorScheme.secondaryContainer,
            )),
            textTheme: const TextTheme().copyWith(
                titleLarge: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kDarkColorScheme.onPrimaryContainer,
                    fontSize: 16))),
        home: const Expenses(),
      ),
    );
  // });
 
}
