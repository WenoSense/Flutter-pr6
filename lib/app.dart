import 'package:flutter/material.dart';
import 'screens/icons_list_page.dart';

class IconsApp extends StatelessWidget {
  const IconsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Icon Viewer',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const IconsListPage(title: 'Icon Viewer'),
    );
  }
}
