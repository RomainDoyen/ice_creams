import 'package:flutter/material.dart';
import 'package:ice_creams/models/icecream.dart';
import 'package:ice_creams/pages/detail/detail.dart';
import 'package:ice_creams/pages/home/controller/search_controller.dart';
import 'package:provider/provider.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final searchController = Provider.of<SearchControllerIceCream>(context);
    final items = IceCream.icecreams();

    return PopScope(
      onPopInvoked: (didPop) {
        if (didPop) {
          searchController.clearQuery();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Search Ice Creams',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color(0xFFBB71B4),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(16),
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
            Expanded(
              child: Builder(
                builder: (context) {
                  final query = searchController.query;
                  final results = searchController.searchResults(items);

                  if (query.isEmpty) {
                    return const Center(
                      child: Text(
                        'Please enter a search term to find ice creams.',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    );
                  }

                  if (results.isEmpty) {
                    return const Center(
                      child: Text(
                        'No ice creams found. Please try a different search.',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    );
                  }

                  return ListView.builder(
                    itemCount: results.length,
                    itemBuilder: (context, index) {
                      final result = results[index];
                      return ListTile(
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            result.bgImageUrl,
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return const Icon(
                                Icons.image_not_supported_rounded,
                                size: 60,
                                color: Colors.grey,
                              );
                            },
                          ),
                        ),
                        title: Text(
                          result.name,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFBB71B4),
                          ),
                        ),
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
        ),
      ),
    );
  }
}
