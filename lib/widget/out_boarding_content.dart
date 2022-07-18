import 'package:flutter/material.dart';


class OutBoardingContent extends StatelessWidget {
  const OutBoardingContent({
    Key? key,
    required this.title,
    required this.image,
    required this.subTile,
    required this.sub2Tile,

  }) : super(key: key);

  final String title ;
  final String subTile ;
  final String sub2Tile ;
  final String image ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Text(
            title,
            style: TextStyle(fontSize: 36, color: Color(0xffFF7643)),
          ),
          const SizedBox(height: 8),
           Text(
          subTile  ,
            style: TextStyle(fontSize: 16, color: Color(0xff757575)),
          ),const SizedBox(height: 4),
           Text(
             sub2Tile  ,
            style: TextStyle(fontSize: 16, color: Color(0xff757575)),
          ),
          const SizedBox(height: 95),
          Center(child: Image.asset(image)),
        ],
      ),
    );
  }
}
