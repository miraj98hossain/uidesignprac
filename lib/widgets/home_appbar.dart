import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          const Icon(Icons.sort,
              color: Color.fromARGB(255, 69, 79, 85), size: 30),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'DP Shop',
              style: TextStyle(
                  color: Color.fromARGB(255, 72, 170, 234),
                  fontSize: 23,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Spacer(),
          badges.Badge(
            badgeStyle: const badges.BadgeStyle(
              badgeColor: Colors.red,
              padding: EdgeInsets.all(5),
            ),
            badgeContent:
                const Text('3', style: TextStyle(color: Colors.white)),
            child: InkWell(
              onTap: () {},
              child: const Icon(
                Icons.shopping_cart_checkout_outlined,
                size: 30,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
