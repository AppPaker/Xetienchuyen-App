import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:xetienchuyen/src/app/presentation/screens/splash/splash_screen.dart';
import 'package:xetienchuyen/src/app/presentation/theme/color_theme.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xetienchuyen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Inter",
        primaryColor: kPrimaryColor,
        useMaterial3: true,
      ),
      home: const SplashScreen(),
      // home: BottomNavBar(selectedTab: 0),
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
      ),
    );
  }
}
