import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_mode/logic/theme.dart';
import 'package:theme_mode/logic/theme_manager.dart';
import 'screens/home_page.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ThemeManager()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final _themManager = Provider.of<ThemeManager>(context, listen: true);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themManager.themeMode,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
