import 'package:flutter/material.dart';
import 'package:ice_creams/pages/home/widgets/newest.dart';
import 'package:ice_creams/pages/home/widgets/popular.dart';

class CategorySection extends StatelessWidget {
  CategorySection({super.key});

  final categories = [
    {
      'title': 'All',
      'icon': 'assets/icons/list.png',
    },
    {
      'title': 'Chocolate',
      'icon': 'assets/icons/chocolate.png',
    },
    {
      'title': 'Lemon',
      'icon': 'assets/icons/citrus.png',
    },
    {
      'title': 'Apple',
      'icon': 'assets/icons/apple.png',
    },
    {
      'title': 'Strawberry',
      'icon': 'assets/icons/strawberry.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 140,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              separatorBuilder: (context, index) => const SizedBox(width: 10),
              itemBuilder: (context, index) {
                final category = categories[index];
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Image.asset(
                          category['icon'] as String,
                          width: 30,
                          height: 30,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      category['title'] as String,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                );
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 25, top: 20),
            child: const Text(
              'Popular Ice Cream',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          PopularIceCream(),
          Container(
            margin: const EdgeInsets.only(left: 25, top: 20),
            child: const Text(
              'Newtest Ice Cream',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          NewestIceCream(),
        ],
      ),
    );
  }
}
