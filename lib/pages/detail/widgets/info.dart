import 'package:flutter/material.dart';
import 'package:ice_creams/models/icecream.dart';
import 'package:ice_creams/pages/detail/widgets/gallery.dart';
import 'package:ice_creams/pages/detail/widgets/header.dart';


class IceCreamInfo extends StatelessWidget {
  const IceCreamInfo(this.iceCream, {super.key});

  final IceCream iceCream;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          HeaderDetailSection(iceCream),
          GallerySection(iceCream),
        ],
      ),
    );
  }
}