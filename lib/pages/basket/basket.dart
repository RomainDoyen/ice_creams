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
          ? const Center(child: Text('Your basket is empty.'))
          : ListView.builder(
              itemCount: basket.items.length,
              itemBuilder: (context, index) {
                final item = basket.items[index];
                return ListTile(
                  title: Text(item.name),
                  subtitle: Text('Price: \$${item.price.toStringAsFixed(2)}'),
                  trailing: IconButton(
                    icon: const Icon(Icons.remove_circle),
                    onPressed: () {
                      basket.removeFromBasket(item);
                    },
                  ),
                );
              },
            ),
    );
  }
}
