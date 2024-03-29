import 'package:flutter/material.dart';

import '../../model/category_detailes.dart';
import '../../widget/ctegory_widget.dart';
import '../../widget/popular_product.dart';
import '../../widget/special_category.dart';
class BNBHome extends StatelessWidget {
  const BNBHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric( horizontal: 20),
      children: [
        // Row(
        //   children: [
        //     // Expanded(
        //     //   child: Container(
        //     //     margin: const EdgeInsets.only(right: 20),
        //     //     padding: const EdgeInsets.all(10),
        //     //     decoration: BoxDecoration(
        //     //       color: const Color(0xffF8F8F9),
        //     //       borderRadius: BorderRadius.circular(20),
        //     //     ),
        //     //     child: const TextField(
        //     //       decoration: InputDecoration(
        //     //           prefixIcon: Icon(
        //     //             Icons.search,
        //     //             color: Colors.black,
        //     //           ),
        //     //           border: InputBorder.none,
        //     //           hintText: 'Search Product',
        //     //           hintStyle:
        //     //           TextStyle(color: Color(0xff757575), fontSize: 16)),
        //     //     ),
        //     //   ),
        //     // ),
        //     CircleAvatar(
        //       backgroundColor: const Color(0xffF8F8F9),
        //       radius: 25,
        //       child: IconButton(
        //         icon: const Icon(
        //           Icons.shopping_cart_outlined,
        //           color: Colors.black,
        //         ),
        //         onPressed: () {},
        //       ),
        //     ),
        //     const SizedBox(width: 20),
        //     CircleAvatar(
        //       backgroundColor: const Color(0xffF8F8F9),
        //       radius: 25,
        //       child: IconButton(
        //         icon: const Icon(
        //           Icons.notifications_none_outlined,
        //           color: Colors.black,
        //         ),
        //         onPressed: () {},
        //       ),
        //     ),
        //   ],
        // ),
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.symmetric(vertical: 30),
          decoration: BoxDecoration(
              color: const Color(0xff412A8D),
              borderRadius: BorderRadius.circular(15)),
          child: const ListTile(
            title: Text(
              'A Summer Surprise',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
            subtitle: Text(
              'Cashback 20%',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CategoryWidget(
              icon: Icons.flash_on_rounded,
              onTap: () {},
              firstWord: 'Flash',
              secondWord: 'Deal',
            ),
            CategoryWidget(
              icon: Icons.local_library_outlined,
              onTap: () {},
              firstWord: 'Bill',
            ),
            CategoryWidget(
              icon: Icons.videogame_asset_outlined,
              onTap: () {},
              firstWord: 'Game',
            ),
            CategoryWidget(
              icon: Icons.card_giftcard,
              onTap: () {},
              firstWord: 'Daily',
              secondWord: 'Gift',
            ),
            CategoryWidget(
              icon: Icons.more,
              onTap: () {},
              firstWord: 'More',
            ),
          ],
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Special for you',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            Text(
              'See More',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade400,
              ),
            ),
          ],
        ),
        const SizedBox(height: 30),
        SizedBox(
          height: 140,
          child: ListView(scrollDirection: Axis.horizontal, children: const [
            SpecialCategory(
              title: 'Smart Phone',
              brandTitle: '18 Brands',
              image: 'assets/images/phone.png',
            ),
            SizedBox(width: 20),
            SpecialCategory(
              title: 'Fashion',
              brandTitle: '24 Brands',
              image: 'assets/images/chose.png',
            ),
            SizedBox(width: 10),
          ]),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Popular Product',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            Text(
              'See More',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade400,
              ),
            ),
          ],
        ),
        const SizedBox(height: 30),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              PopularProduct(
                categoryDetails: CategoryDetails(
                  image: 'assets/images/pp1.png',
                  leftImage: 'assets/images/pp1.png',
                  rightImage: 'assets/images/pp1.png',
                  backImage: 'assets/images/pp1.png',
                  title: 'Wireless Controller for PS4™',
                  price: '64',
                  description:
                  'Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …',
                ),
              ),
              PopularProduct(
                categoryDetails: CategoryDetails(
                  image: 'assets/images/pp2.png',
                  leftImage: 'assets/images/pp2.png',
                  rightImage: 'assets/images/pp2.png',
                  backImage: 'assets/images/pp2.png',
                  title: 'Shirt to summer',
                  price: '10',
                  description:
                  'Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …',
                ),
              ),
              PopularProduct(
                categoryDetails: CategoryDetails(
                  image: 'assets/images/pp3.png',
                  leftImage: 'assets/images/pp3.png',
                  rightImage: 'assets/images/pp3.png',
                  backImage: 'assets/images/pp3.png',
                  title: 'Wireless Controller for PS4™',
                  price: '64',
                  description:
                  'Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
