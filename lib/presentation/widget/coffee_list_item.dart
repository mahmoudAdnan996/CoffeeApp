import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/models/coffee.dart';
import '../resources/app_sizes.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CoffeeListItem extends StatelessWidget{
  final Coffee coffee;

  const CoffeeListItem({super.key, required this.coffee});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizes.s100,
      width: double.infinity,
      child: Card(
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Text(coffee.title),
                  Text(coffee.description),
                  Text(coffee.ingredients.join(","))
                ],
              ),
            ),
            Container(
              width: AppSizes.s40.r,
              height: AppSizes.s40.r,
              decoration: BoxDecoration(
                image: DecorationImage(image: CachedNetworkImageProvider(coffee.image))
              ),
            )
          ],
        ),
      ),
    );
  }

}