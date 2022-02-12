import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:vp12_azkar_app/screens/azkar_screen.dart';
import 'package:vp12_azkar_app/screens/info_screen.dart';
import 'package:vp12_azkar_app/screens/launch_screen.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/launch_screen',
      localizationsDelegates: [
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate
      ],
      supportedLocales: [
        Locale('ar'),
        Locale('en'),
       
      ],
      locale: Locale('ar'),
      routes: {
        '/launch_screen': (context) => const LaunchScreen(),
        '/azkar_screen':(context)=>  const AzkarScreen(),
        '/info_screen':(context)=> InfoScreen(),
      },
    );

  }
}
