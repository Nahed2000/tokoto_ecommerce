import 'package:flutter/material.dart';

class OutBoardingIndicator extends StatelessWidget {
  const OutBoardingIndicator({
    Key? key,
    this.marginEnd = 0,
    required this.selectedIndex,
  }) : super(key: key);
  final double marginEnd;

  final bool selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      width: selectedIndex?20:6,
      margin: EdgeInsetsDirectional.only(end: marginEnd),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: selectedIndex?const Color(0xFFFF7643): Colors.grey,
      ),
    );
  }
}
