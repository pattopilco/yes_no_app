import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/chat/chat_screen.dart';

import 'config/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void _clickme() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 3).theme(),
        home: const ChatScreen());
  }
}
