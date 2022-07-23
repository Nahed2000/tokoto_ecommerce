import 'package:flutter/material.dart';

import '../widget/ctegory_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(right: 20),
                  padding: const EdgeInsets.all(10),
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
                        hintStyle:
                            TextStyle(color: Color(0xff757575), fontSize: 16)),
                  ),
                ),
              ),
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
            ],
          ),
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
          )
        ],
      ),
    );
  }
}
