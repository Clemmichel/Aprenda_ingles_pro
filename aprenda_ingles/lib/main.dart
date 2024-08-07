import 'package:aprenda_ingles/Telas/Home.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Home(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: const Color(0xff795548),
            appBarTheme: const AppBarTheme(backgroundColor: Color(0xff795548)),
            scaffoldBackgroundColor: const Color(0xfff5e9b9)),
      ),
    );
