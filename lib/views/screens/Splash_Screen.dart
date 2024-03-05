import 'dart:async';
import 'package:e_commarce/utils/routes.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  changePage() {
    Timer.periodic(const Duration(seconds: 5), (timer) {
      Navigator.of(context).pushReplacementNamed(MyRoutes.welcome);
      timer.cancel();
    });
  }

  @override
  void initState() {
    super.initState();
    changePage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              child: Text("E"),
              radius: 20,
              backgroundColor: Colors.brown,
            ),
            SizedBox(
              width: 10,
            ),
            Text("-commerce"),
          ],
        ),
      ),
    );
  }
}
