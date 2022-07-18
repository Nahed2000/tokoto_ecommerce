import 'package:flutter/material.dart';

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton({
    Key? key,
    required this.onPress,
    required this.image,
  }) : super(key: key);
  final String image;
  final void Function()onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: CircleAvatar(
        backgroundColor: Colors.grey.shade200,
        radius: 24,
        child: Image.asset(image),
      ),
    );
  }
}