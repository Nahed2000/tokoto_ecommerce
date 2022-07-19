import 'package:flutter/material.dart';
import 'package:tokoto/widget/custom_button.dart';

import '../../widget/custom_text_field.dart';
import '../../widget/social_media_button.dart';
import '../../widget/text_code.dart';

class ActivityCodeScreen extends StatefulWidget {
  const ActivityCodeScreen({Key? key}) : super(key: key);

  @override
  State<ActivityCodeScreen> createState() => _ActivityCodeScreenState();
}

class _ActivityCodeScreenState extends State<ActivityCodeScreen> {
  late TextEditingController firstController;

  late TextEditingController secondController;
  late TextEditingController thirdController;

  late TextEditingController forthController;

  late FocusNode firstNode;
  late FocusNode secondNode;
  late FocusNode thirdNode;
  late FocusNode forthNode;

  @override
  void initState() {
    // TODO: implement initState
    firstController = TextEditingController();
    secondController = TextEditingController();
    thirdController = TextEditingController();
    forthController = TextEditingController();

    firstNode = FocusNode();
    secondNode = FocusNode();
    thirdNode = FocusNode();
    forthNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    firstController.dispose();
    secondController.dispose();
    thirdController.dispose();
    forthController.dispose();

    firstNode.dispose();
    secondNode.dispose();
    thirdNode.dispose();
    forthNode.dispose();
    super.dispose();
  }

  bool checkBox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: const Text(
          'OTP Verification',
          style: TextStyle(color: Color(0xff8B8B8B)),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 50.0, left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    'OTP Verification',
                    style: TextStyle(fontSize: 36, color: Colors.black),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'We sent your code to +1 898 860 ***',
                    style: TextStyle(fontSize: 16, color: Color(0xff757575)),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'This code will expired in 00:30',
                    style: TextStyle(fontSize: 16, color: Color(0xff757575)),
                  ),
                ],
              ),
              const SizedBox(height: 100),
              Row(
                children: [
                  TextCode(
                    node: firstNode,
                    controller: firstController,
                    onChanged: (index) {
                      if (index.isNotEmpty) {
                        secondNode.requestFocus();
                      }
                    },
                  ),
                  const SizedBox(width: 8),
                  TextCode(
                    node: secondNode,
                    controller: secondController,
                    onChanged: (index) {
                      if (index.isNotEmpty) {
                        thirdNode.requestFocus();
                      }else{
                        firstNode.requestFocus();
                      }
                    },
                  ),
                  const SizedBox(width: 8),
                  TextCode(
                    node: thirdNode,
                    controller: thirdController,
                    onChanged: (index) {
                      if (index.isNotEmpty) {
                        forthNode.requestFocus();
                      }else{
                        secondNode.requestFocus();
                      }
                    },
                  ),
                  const SizedBox(width: 8),
                  TextCode(
                    node: forthNode,
                    controller: forthController,
                    onChanged: (index) {
                      if (index.isEmpty) {
                        thirdNode.requestFocus();
                      }
                    },
                  ),
                ],
              ),
              const SizedBox(height: 100),
              CustomButton(onPress: () {}, title: 'Continue'),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 250),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Resend OTP Code',
                    style: TextStyle(
                        color: Color(0xff757575),
                        fontSize: 15,
                        decoration: TextDecoration.underline),
                  ),
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
