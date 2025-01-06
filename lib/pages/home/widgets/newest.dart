import 'package:flutter/material.dart';
import 'package:ice_creams/models/icecream.dart';
import 'package:ice_creams/pages/detail/detail.dart';

class NewestIceCream extends StatefulWidget {
  final String category;

  const NewestIceCream({super.key, required this.category});

  @override
  _NewestIceCreamState createState() => _NewestIceCreamState();
}

class _NewestIceCreamState extends State<NewestIceCream> {
  late List<IceCream> icecreams;

  @override
  void initState() {
    super.initState();
    icecreams = IceCream.icecreams();
  }

  List<IceCream> filterIceCreams(String category) {
    if (category == 'All') {
      return icecreams;
    } else {
      return icecreams.where((icecream) => icecream.type == category).toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    List<IceCream> filteredIceCreams = filterIceCreams(widget.category);

    return Container(
      padding: const EdgeInsets.all(25),
      child: Column(
        children: filteredIceCreams.map((icecream) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(iceCream: icecream),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                color: const Color(0xFFE3EEFF),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset(icecream.icon),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          icecream.name,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  icecream.type,
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                ),
                                const SizedBox(height: 2),
                                const Row(
                                  children: [
                                    Icon(Icons.star,
                                        color: Colors.yellow, size: 15),
                                  ],
                                )
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              decoration: BoxDecoration(
                                color: const Color(0xFFBB71B4),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                '${icecream.price} \$',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
