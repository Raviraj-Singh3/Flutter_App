import 'package:flutter/material.dart';
import 'package:flutter_api/pages/homepage.dart';
import 'package:flutter_api/pages/login_page.dart';
import 'package:flutter_api/utils/Constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.purple),
      debugShowCheckedModeBanner: false,
      home: Constants.prefs?.getBool("logged")==true
            ?MyHomePage()
            :LoginPage(),
      routes: {
        "/login": (context)=> LoginPage(),
        "/home": (context)=> MyHomePage(),
      },
    );
  }
}
