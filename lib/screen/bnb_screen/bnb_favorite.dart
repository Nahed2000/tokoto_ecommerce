import 'package:flutter/material.dart';




class BNBFavorite extends StatefulWidget {
  const BNBFavorite({Key? key}) : super(key: key);

  @override
  State<BNBFavorite> createState() => _BNBFavoriteState();
}

class _BNBFavoriteState extends State<BNBFavorite> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Favorite App'),
    );
  }
}
