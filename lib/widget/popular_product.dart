import 'package:flutter/material.dart';
import 'package:tokoto/model/category_detailes.dart';

import '../screen/details_screen.dart';

class PopularProduct extends StatelessWidget {
  const PopularProduct({
    Key? key,
    required this.categoryDetails,
  }) : super(key: key);
  final CategoryDetails categoryDetails;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                DetailsScreen(categoryDetails: categoryDetails),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(20)),
          child: Image.asset(
            categoryDetails.image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
