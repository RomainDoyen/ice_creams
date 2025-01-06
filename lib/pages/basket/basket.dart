import 'package:flutter/material.dart';
import 'package:ice_creams/models/basket.dart';
import 'package:provider/provider.dart';

class BasketPage extends StatelessWidget {
  const BasketPage({super.key});

  @override
  Widget build(BuildContext context) {
    final basket = Provider.of<BasketModel>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Basket')),
      body: basket.items.isEmpty
          ? const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add_shopping_cart_rounded,
                  size: 100,
                  color: Colors.deepPurple,
                ),
                Text(
                  'Basket is empty !',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple
                  ),
                ),
              ],
            ),
          )
          : ListView.builder(
              itemCount: basket.items.length,
              itemBuilder: (context, index) {
                final item = basket.items.keys.elementAt(index);
                final quantity = basket.items[item]!;

                return ListTile(
                  leading: Image.asset(
                    item.bgImageUrl,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return const Icon(
                        Icons.image_not_supported_rounded,
                        color: Colors.grey,
                        size: 60,
                      );
                    },
                  ),
                  title: Text(
                    item.name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple
                    ),
                  ),
                  subtitle: Text(
                    'Price: \$${item.price.toStringAsFixed(2)} x $quantity = \$${(item.price * quantity).toStringAsFixed(2)}',
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.remove_circle,
                          color: Colors.red,
                          size: 35,
                        ),
                        onPressed: () {
                          basket.removeFromBasket(item);
                        },
                      ),
                      Text(
                        '$quantity',
                        style: const TextStyle(fontSize: 16),
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.add_circle,
                          color: Colors.green,
                          size: 35,
                        ),
                        onPressed: () {
                          basket.addToBasket(item);
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
