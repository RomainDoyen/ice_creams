import 'package:flutter/material.dart';
import 'package:ice_creams/models/basket.dart';
import 'package:ice_creams/models/icecream.dart';
import 'package:provider/provider.dart';

class ReviewSection extends StatelessWidget {

  final IceCream iceCream;

  const ReviewSection(this.iceCream, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Reviews',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'view',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Icons.star,
                color: Colors.yellow,
                size: 20,
              ),
              const SizedBox(width: 5),
              Text(
                '${iceCream.rating}',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                '${iceCream.review} Reviews',
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: double.maxFinite,
            height: 40,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: const Color(0xFF5F67EA),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                final basket = Provider.of<BasketModel>(context, listen: false);
                basket.addToBasket(iceCream);

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('${iceCream.name} added to basket !'),
                    duration: const Duration(seconds: 2),
                  ),
                );
              },
              child: const Text(
                'Command now',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            )
          )
        ],
      ),
    );
  }
}