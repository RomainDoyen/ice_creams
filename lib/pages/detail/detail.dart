import 'package:flutter/material.dart';
import 'package:ice_creams/models/icecream.dart';
import 'package:ice_creams/pages/detail/widgets/detail_sliver.dart';
import 'package:ice_creams/pages/detail/widgets/info.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.iceCream});

  final IceCream iceCream;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: DetailSliverDelegate(
              iceCream: iceCream,
              expandedHeight: 360,
              roundedContainerHeight: 30,
            ),
          ),
          SliverToBoxAdapter(
            child: IceCreamInfo(iceCream: iceCream),
          )
        ],
      ),
    );
  }
}
