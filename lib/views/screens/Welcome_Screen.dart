import 'package:e_commarce/utils/routes.dart';
import 'package:e_commarce/views/screens/Onboard_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: 35,
          right: 20,
          left: 20,
        ),
        child: Column(
          children: [
            Container(
              height: 400,
              width: 300,
              color: Colors.blue,
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Welcome",
            ),
            SizedBox(
              height: 70,
            ),
            GestureDetector(
              child: Container(
                height: 50,
                width: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.brown,
                ),
                child: Center(
                  child: Text(
                    "Let's Get Started",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ),
              onTap: () {
                Navigator.of(context).pushNamed(MyRoutes.onboard);
              },
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?"),
                SizedBox(
                  width: 10,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(MyRoutes.signin);
                  },
                  child: Text("Sign In"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
