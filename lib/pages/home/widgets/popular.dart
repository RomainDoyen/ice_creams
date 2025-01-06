import 'package:flutter/material.dart';
import 'package:ice_creams/models/icecream.dart';
import 'package:ice_creams/pages/detail/detail.dart';

class PopularIceCream extends StatelessWidget {
  final String category;

  PopularIceCream({super.key, required this.category});

  final List<IceCream> icecreams = IceCream.icecreams();

  @override
  Widget build(BuildContext context) {
    List<IceCream> filteredIcecreams = category == 'All'
        ? icecreams
        : icecreams.where((icecream) => icecream.type == category).toList();

    return SizedBox(
      height: 200,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailPage(iceCream: filteredIcecreams[index]),
            ),
          ),
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Hero(
                  tag: filteredIcecreams[index].name,
                  child: Image.asset(filteredIcecreams[index].bgImageUrl),
                ),
              ),
            ),
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemCount: filteredIcecreams.length,
      ),
    );
  }
}
