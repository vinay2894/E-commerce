import 'package:e_commarce/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Column(),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 300,
                  width: double.infinity,
                  color: Colors.grey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Column(),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 300,
                  width: double.infinity,
                  color: Colors.grey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Column(),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 300,
                  width: double.infinity,
                  color: Colors.grey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.of(context).pushNamed(MyRoutes.signup);
                        },
                        icon: Icon(Icons.arrow_forward),
                        label: Text(""),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
