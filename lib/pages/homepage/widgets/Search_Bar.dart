import 'package:flutter/material.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
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
                decoration: const BoxDecoration(color: Colors.white),
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
    );
  }
}
