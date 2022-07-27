import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tokoto/model/category_detailes.dart';
import 'package:tokoto/screen/bnb_screen/bnb_chat.dart';
import 'package:tokoto/screen/bnb_screen/bnb_favorite.dart';
import 'package:tokoto/screen/bnb_screen/bnb_profile.dart';
import 'package:tokoto/widget/popular_product.dart';

import '../model/bnb_model.dart';
import '../widget/ctegory_widget.dart';
import '../widget/special_category.dart';
import 'bnb_screen/bnb_home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  List<BNBModel> currentPage = [
    BNBModel(titel: 'Home', bodyWidget: BNBHome()),
    BNBModel(titel: 'Favorite', bodyWidget: BNBFavorite()),
    BNBModel(titel: 'Chat', bodyWidget: BNBChat()),
    BNBModel(titel: 'Profile', bodyWidget: BNBProfile()),
  ];

  @override
  Widget build(BuildContext context) {
    AppBar homeAppBar = AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          padding: EdgeInsets.only(right: 10, left: 10, bottom: 30),
          margin: EdgeInsets.only(right: 10, left: 10, bottom: 10, top: 10),
          decoration: BoxDecoration(
            color: const Color(0xffF8F8F9),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                border: InputBorder.none,
                hintText: 'Search Product',
                hintStyle: TextStyle(color: Color(0xff757575), fontSize: 16)),
          ),
        ),
      ),
      actions: [
        CircleAvatar(
          backgroundColor: const Color(0xffF8F8F9),
          radius: 25,
          child: IconButton(
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ),
        const SizedBox(width: 20),
        CircleAvatar(
          backgroundColor: const Color(0xffF8F8F9),
          radius: 25,
          child: IconButton(
            icon: const Icon(
              Icons.notifications_none_outlined,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ),
        const SizedBox(width: 20),
      ],
    );
    AppBar otherAppBar = AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      titleSpacing: 0,
      title: Text(
        currentPage[currentIndex].titel,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      centerTitle:  true,
      leading: IconButton(
        onPressed: () => setState(() {
          currentIndex = 0;
        }),
        icon: const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black,
        ),
      ),

    );

    return Scaffold(
      appBar: currentIndex==0?homeAppBar:otherAppBar,
      backgroundColor: Colors.white,
      body: SafeArea(child: currentPage[currentIndex].bodyWidget),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(top: 20, bottom: 10),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                  color: Colors.white60,
                  blurRadius: 10,
                  spreadRadius: 10,
                  offset: Offset(5, 5))
            ]),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
              print(currentIndex);
            });
          },
          backgroundColor: Colors.white,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          iconSize: 28,
          items: const [
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.home_outlined,
                color: Colors.grey,
              ),
              activeIcon: Icon(
                Icons.home,
                color: Color(0xffFF7643),
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.favorite_border_outlined,
                color: Colors.grey,
              ),
              activeIcon: Icon(
                Icons.favorite,
                color: Color(0xffFF7643),
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.mode_comment_outlined,
                color: Colors.grey,
              ),
              activeIcon: Icon(
                Icons.comment,
                color: Color(0xffFF7643),
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.person_outline_sharp,
                color: Colors.grey,
              ),
              activeIcon: Icon(
                Icons.person,
                color: Color(0xffFF7643),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
