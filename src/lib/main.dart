import 'package:flutter_ui_kit/pages/navigator/navigator_page.dart';
import 'package:flutter_ui_kit/route_generator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/welcome_page.dart';
import 'globals.dart';
import 'package:feature_discovery/feature_discovery.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await isFirstTime();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return FeatureDiscovery(
      recordStepsInSharedPreferences: true,
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.teal,
          useMaterial3: true,
          primaryIconTheme: IconThemeData(color: Colors.black),
          fontFamily: GoogleFonts.poppins().fontFamily,
        ),
        onGenerateRoute: RouteGenerator.generateRoute,
        debugShowCheckedModeBanner: false,
        home: !firstTime ? NavigatorPage() : WelcomePage(),
        // home: WelcomePage(),
      ),
    );
  }
}
