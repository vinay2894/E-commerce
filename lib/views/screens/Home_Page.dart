import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commarce/Controllers/api_controller.dart';
import 'package:e_commarce/helpers/firebase_auth_helper.dart';
import 'package:e_commarce/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home Page",
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Divider(),
            GestureDetector(
              onTap: () {
                AuthHelper.authHelper.signOut().then(
                      (value) => Navigator.of(context).pushReplacementNamed(
                        MyRoutes.signin,
                      ),
                    );
              },
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: Center(
                  child: Text(
                    "Log-out",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Consumer<ProductController>(
              builder: (context, value, child) {
                return CarouselSlider(
                  items: List.generate(
                    5,
                    (index) => AnimatedContainer(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            value.allProduct[index].thumbnail,
                            // Provider.of<ProductController>(context)
                            //     .allProduct[index]
                            //     .thumbnail,
                          ),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: double.infinity,
                      height: 300,
                      color: Colors.red,
                      duration: Duration(milliseconds: 600),
                    ),
                  ),
                  options: CarouselOptions(
                    autoPlay: true,
                    autoPlayAnimationDuration: Duration(
                      milliseconds: 300,
                    ),
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayCurve: Curves.bounceInOut,
                    enlargeCenterPage: true,
                  ),
                );
              },
            ),
            Gap(20),
            Text(
              'All Products',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Gap(20),
            Expanded(
              child: Consumer<ProductController>(
                builder: (context, pro, _) => GridView.builder(
                  itemCount: pro.allProduct.length,
                  itemBuilder: (context, index) => Container(
                    height: 120,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.primaries[index % 18],
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: NetworkImage(pro.allProduct[index].thumbnail),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
