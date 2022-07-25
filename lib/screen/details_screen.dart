import 'package:flutter/material.dart';
import 'package:tokoto/model/category_detailes.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({
    Key? key,
    required this.categoryDetails,
  }) : super(key: key);
  final CategoryDetails categoryDetails;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: ()=>Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios_new,color: Colors.black,),
        ),
        actions: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '4.5',
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(width: 7),
              Icon(
                Icons.star,
                color: Colors.amber,
              )
            ],
          )
        ],
      ),

       body:SafeArea(
         child: Padding(
           padding: const EdgeInsets.all(20.0),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Image.asset(widget.categoryDetails.image)
             ],
           ),
         ),
       ) ,
    );
  }

  String get heroImage{
    if(widget.categoryDetails.image == ''){

    }
    return
      widget.categoryDetails.image;
  }
}
