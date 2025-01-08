import 'package:flutter/material.dart';
import 'package:ice_creams/pages/basket/basket.dart';
import 'package:ice_creams/pages/home/widgets/category.dart';
import 'package:ice_creams/pages/home/widgets/header.dart';
import 'package:ice_creams/pages/home/widgets/search.dart';
import 'package:ice_creams/pages/contact/contact.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    SingleChildScrollView(
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Image.asset(
                'assets/images/ice_cream.png',
                width: 150,
              ),
            ),
          ),
          const Column(
            children: [
              HeaderSection(),
              SearchSection(),
              CategorySection(),
            ],
          )
        ],
      ),
    ),
    const BasketPage(),
    const ContactPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC8B7F7),
      body: _pages[_currentIndex],
      bottomNavigationBar: _buildNavigationBar(),
    );
  }

  Widget _buildNavigationBar() {
    return Container(
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 10,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            selectedItemColor: const Color(0xFFBB71B4),
            selectedFontSize: 12,
            unselectedFontSize: 12,
            unselectedItemColor: Colors.grey.withOpacity(0.7),
            type: BottomNavigationBarType.fixed,
            items: [
              const BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(
                  Icons.home_rounded,
                  size: 50,
                ),
              ),
              const BottomNavigationBarItem(
                label: 'Basket',
                icon: Icon(
                  Icons.shopping_basket_rounded,
                  size: 50,
                ),
              ),
              BottomNavigationBarItem(
                label: "Contact",
                icon: Container(
                  margin: const EdgeInsets.all(2),
                  padding: const EdgeInsets.all(2),
                  child: const Icon(
                    Icons.contact_phone_rounded,
                    size: 40,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}