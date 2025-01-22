import 'package:e_commerce_app/theme/theme.dart';
import 'package:e_commerce_app/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/cart.dart';
import 'pages/intro_page.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => ThemeProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          home: IntroPage(),
          theme: Provider.of<ThemeProvider>(context).themeData),
    );
  }
}
