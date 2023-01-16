import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '/core.dart';

void main() async {
  await initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: Get.navigatorKey,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: whiteColor,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: whiteColor,
          toolbarTextStyle: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme,
          ).bodyText2,
          titleTextStyle: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme,
          ).headline6,
        ),
      ),
      home: const SplashScreenView(),
    );
  }
}
