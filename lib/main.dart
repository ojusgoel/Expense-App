import 'package:flutter/material.dart';
import 'package:flutter_expense/widgets/expense.dart';
// import 'package:flutter/services.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: Colors.blue,
);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: Colors.blueGrey,
);

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  // ]).then((fn){
    runApp(
      MaterialApp(
        // theme: ThemeData(useMaterial3: true),
        darkTheme: ThemeData.dark().copyWith(
          // useMaterial3: true,
          colorScheme: kDarkColorScheme,
          cardTheme: CardTheme().copyWith(
            color: kDarkColorScheme.secondaryContainer,
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            // can't use copywith here
            style: ElevatedButton.styleFrom(
              backgroundColor: kDarkColorScheme.primaryContainer,
              foregroundColor: kDarkColorScheme.onPrimaryContainer,
            ),
          ),
        ),
        theme: ThemeData().copyWith(
          // useMaterial3: true,
          // scaffoldBackgroundColor: Colors.blueGrey,
          colorScheme: kColorScheme,
          appBarTheme: AppBarTheme().copyWith(
            backgroundColor: kColorScheme.onPrimaryContainer,
            foregroundColor: kColorScheme.primaryContainer,
          ),
          cardTheme: CardTheme().copyWith(
            color: kColorScheme.secondaryContainer,
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            // can't use copywith here
            style: ElevatedButton.styleFrom(
              backgroundColor: kColorScheme.primaryContainer,
            ),
          ),
          textTheme: ThemeData().textTheme.copyWith(
            titleLarge: TextStyle(
              fontWeight: FontWeight.bold,
              color: kColorScheme.onSecondaryContainer,
              // the above command doesn't work as we have already set color in appBar theme
              fontSize: 16,
            ),
          ),
        ),
        themeMode: ThemeMode.system,
        home: Expenses(),
      ),
    );
  // });
}
