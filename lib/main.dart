import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const MovielibraryApp());
}

class MovielibraryApp extends StatelessWidget {
  const MovielibraryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Harry Potter Library',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFB99A45),
          brightness: Brightness.dark,
          ),
          scaffoldBackgroundColor: const Color(0xFF101820),
          cardColor: const Color(0xFF202B32),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFF101820),
            foregroundColor: Color(0xFFE4C66A),
            centerTitle: true,
          ),
      ),
      home: const HomePage(),
    );
  }
}
