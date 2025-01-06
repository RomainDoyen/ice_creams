import 'package:flutter/material.dart';
import 'package:ice_creams/models/icecream.dart';

class NewestIceCream extends StatelessWidget {
  NewestIceCream({super.key});

  final List<IceCream> icecreams = IceCream.icecreams();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      child: Column(
        children: icecreams.map((icecream) => Container(
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
                                Icon(Icons.star, color: Colors.yellow, size: 15),
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
        )).toList(),
      ),
    );
  }
}
