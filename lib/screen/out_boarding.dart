import 'package:flutter/material.dart';

import '../widget/custom_button.dart';
import '../widget/out_boarding_indecator.dart';
import '../widget/out_boarding_content.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({Key? key}) : super(key: key);

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  int currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    _pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (value) {
                  setState(() {
                    currentIndex = value;
                    print(currentIndex);
                  });
                },
                children: const [
                  OutBoardingContent(
                      title: 'TOKOTO',
                      image: 'assets/images/page_1.png',
                      subTile: 'Welcome to Tokoto, Let’s shop!',
                      sub2Tile: ''),
                  OutBoardingContent(
                      title: 'TOKOTO',
                      image: 'assets/images/page_2.png',
                      subTile: 'We help people conect with store ',
                      sub2Tile: 'around United State of America'),
                  OutBoardingContent(
                      title: 'TOKOTO',
                      image: 'assets/images/page_3.png',
                      subTile: 'We show the easy way to shop.',
                      sub2Tile: 'Just stay at home with us'),
                ],
              ),
            ),
            const SizedBox(height: 65),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutBoardingIndicator(selectedIndex: currentIndex == 0),
                const SizedBox(width: 4),
                OutBoardingIndicator(selectedIndex: currentIndex == 1),
                const SizedBox(width: 4),
                OutBoardingIndicator(selectedIndex: currentIndex == 2),
              ],
            ),
            const SizedBox(height: 95),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: CustomButton(
                title: 'Continue',
                onPress: () {
                  setState(() {
                    _pageController.nextPage(
                        duration: const Duration(seconds: 1),
                        curve: Curves.decelerate);
                    if (currentIndex == 2) {
                      Navigator.pushReplacementNamed(context, '/login_screen');
                      print('currentIndex $PageViewScreen');
                    }
                  });
                },
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
