import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    Key? key,
    required this.onTap,
    required this.icon,
    required this.firstWord,
     this.secondWord = '',
  }) : super(key: key);
  final void Function() onTap;
  final IconData icon ;
  final String firstWord;
  final String secondWord;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 5),
            padding:const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: const Color(0xffFFECDF),
                borderRadius: BorderRadius.circular(12)),
            child:  Icon(
              icon,
              color: Color(0xffFF7643),
              size: 36,
            ),
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '$firstWord \n'
                      ,style: const TextStyle(
                  color: const Color(0xff757575)
                ),
                  children: [
                    TextSpan(
                      text: secondWord
                      ,style: const TextStyle(
                        color: const Color(0xff757575)
                    ),
                    )
                  ]
                )
              ]
            )
          )
        ],
      ),
    );
  }
}