import 'package:flutter/material.dart';
import 'package:instagram_clone_hw/module/root/root_app.dart';

void main() {
   runApp(MaterialApp(
    theme: ThemeData(
      appBarTheme: AppBarTheme(
        brightness: Brightness.dark,
      ),
    ),
    debugShowCheckedModeBanner: false,
    home: RootApp(),
  ));
}
