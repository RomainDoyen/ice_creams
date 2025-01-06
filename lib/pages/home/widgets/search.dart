import 'package:flutter/material.dart';
import 'package:ice_creams/models/icecream.dart';
import 'package:ice_creams/pages/detail/detail.dart';
import 'package:ice_creams/pages/home/controller/search_controller.dart';
import 'package:provider/provider.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    final searchController = Provider.of<SearchControllerIceCream>(context);
    final items = IceCream.icecreams();

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: TextField(
            onChanged: (query) => searchController.updateQuery(query),
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              prefixIcon: const Icon(
                Icons.search_outlined,
                size: 30,
                color: Colors.grey,
              ),
              hintText: 'Search ice cream',
              hintStyle: const TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
          ),
        ),
        if (searchController.query.isNotEmpty)
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Builder(
              builder: (context) {
                final results = searchController.searchResults(items);
                if (results.isEmpty) {
                  return const Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Text(
                        'No ice creams found. Please try a different search.',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  );
                }
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: results.length,
                  itemBuilder: (context, index) {
                    final result = results[index];
                    return ListTile(
                      leading: Image.asset(
                        result.bgImageUrl,
                        width: 40,
                        height: 40,
                      ),
                      title: Text(result.name),
                      subtitle: Text('\$${result.price.toStringAsFixed(2)}'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                DetailPage(iceCream: result),
                          ),
                        );
                      },
                    );
                  },
                );
              },
            ),
          ),
      ],
    );
  }
}
