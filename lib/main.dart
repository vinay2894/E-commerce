import 'package:e_commarce/Controllers/api_controller.dart';
import 'package:e_commarce/utils/routes.dart';
import 'package:e_commarce/views/screens/Home_Page.dart';
import 'package:e_commarce/views/screens/Onboard_Screen.dart';
import 'package:e_commarce/views/screens/Welcome_Screen.dart';
import 'package:e_commarce/views/screens/sign_up.dart';
import 'package:e_commarce/views/screens/Splash_Screen.dart';
import 'package:e_commarce/views/screens/sign_in_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    ChangeNotifierProvider(
      create: (context) => ProductController(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      initialRoute: MyRoutes.splashscreen,
      routes: {
        MyRoutes.splashscreen: (context) => SplashScreen(),
        MyRoutes.welcome: (context) => WelcomeScreen(),
        MyRoutes.onboard: (context) => OnboardScreen(),
        MyRoutes.signin: (context) => SignIn(),
        MyRoutes.signup: (context) => Sign_Up(),
        MyRoutes.home: (context) => HomePage(),
      },
    );
  }
}
