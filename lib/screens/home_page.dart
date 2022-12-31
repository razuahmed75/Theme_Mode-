import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:theme_mode/logic/theme_manager.dart';
import '../constant/colors.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isDark = false;
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    /// variables
    final _ThemeManager = Provider.of<ThemeManager>(context, listen: true);
    final TextTheme _textTheme = Theme.of(context).textTheme;
    var isDark = Theme.of(context).brightness == Brightness.dark;

    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(systemNavigationBarColor: AppColor.black));

    return Scaffold(
      appBar: AppBar(
        title: Text(isDark ? 'DarkMode' : 'LightMode'.toUpperCase(),
            style: _textTheme.headlineSmall?.copyWith(
              fontFamily: GoogleFonts.poppins().fontFamily,
              color: AppColor.dColor,
              letterSpacing: 3,
            )),
        centerTitle: true,
        actions: [
          Switch(
              value: isDark,
              onChanged: (_) {
                _ThemeManager.toggleTheme(isDark = !isDark);
              }),
          SizedBox(width: 20),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipOval(
              child:
                  SvgPicture.asset('assets/undraw_avatar_6.svg', height: 200),
            ),
            Text(
              'Your name',
              style: _textTheme.headlineMedium,
            ),
            Text(
              '@razuahmed',
              style: _textTheme.titleMedium?.copyWith(
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 40),
            Text(
              'You have pushed the button this many times:',
              style: _textTheme.titleSmall?.copyWith(
                  color: isDark ? AppColor.dColor : AppColor.deepGrey),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Divider(color: isDark ? AppColor.dColor : AppColor.black),
            ElevatedButton(onPressed: () {}, child: Text('Elevated Button1')),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () {}, child: Text('Elevated Button2')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
