import 'package:flutter/material.dart';
import 'package:uidesignprac/pages/homepage/widgets/Search_Bar.dart';
import 'package:uidesignprac/pages/homepage/widgets/best_selling.dart';
import 'package:uidesignprac/pages/homepage/widgets/categoties.dart';
import 'package:uidesignprac/pages/homepage/widgets/home_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            const HomeAppbar(),
            Container(
              padding: const EdgeInsets.only(top: 20),
              decoration: const BoxDecoration(
                color: Color(0xFFEDECF2),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: Column(
                children: [
                  const Searchbar(),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    child: const Text(
                      "Categories",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Categories(),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    child: const Text(
                      "Best Selling",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const BestSelling(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
