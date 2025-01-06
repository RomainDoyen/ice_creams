import 'package:flutter/material.dart';
import 'package:ice_creams/models/icecream.dart';
import 'package:readmore/readmore.dart';

class DescriptionSection extends StatelessWidget {

  final IceCream iceCream;

  const DescriptionSection(this.iceCream, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: ReadMoreText(
        iceCream.description,
        trimLines: 2,
        colorClickableText: const Color(0xFFBB71B4),
        trimMode: TrimMode.Line,
        trimCollapsedText: 'More',
        trimExpandedText: 'Less',
        style: const TextStyle(
          fontSize: 16,
          color: Colors.black,
          height: 1.5,
        ),
      ),
    );
  }
}