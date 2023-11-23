import 'package:flutter/material.dart';
import 'package:uidesignprac/widgets/home_appbar.dart';

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
              height: 500,
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
                  Container(
                    height: 50,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 215, 51, 51),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.search),
                            Container(
                              margin: const EdgeInsets.only(left: 2),
                              height: 50,
                              width: 280,
                              decoration:
                                  const BoxDecoration(color: Colors.white),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Search Here...",
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Icon(Icons.close),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
