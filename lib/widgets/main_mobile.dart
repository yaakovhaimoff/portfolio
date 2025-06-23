import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/welcome_message.dart';
import 'package:my_portfolio/constants/about_me.dart';
import '../constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({
    super.key,
    required this.onGetInTouchTap,
  });

  final Function(int) onGetInTouchTap;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      height: screenHeight,
      constraints: const BoxConstraints(maxHeight: 600),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Avatar image
          Center(
            child: Image.asset(
              "assets/profile_pic.png",
              width: screenWidth / 2.5,
            ),
          ),
          const SizedBox(height: 30),

          // Welcome message
          const SelectableText(
            welcomeMessage,
            style: TextStyle(
              fontSize: 24,
              height: 1.5,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(height: 20),

          // About Me title
          const SelectableText(
            "About Me",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(height: 10),

          // About Me paragraph
          const SelectableText(
            aboutMe,
            style: TextStyle(
              fontSize: 16,
              color: CustomColor.whitePrimary,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 30),

          // Get in touch button
          SizedBox(
            width: 180,
            child: ElevatedButton(
              onPressed: () {
                onGetInTouchTap(3);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: CustomColor.yellowPrimary,
                foregroundColor: CustomColor.whitePrimary,
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 25),
                textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: const Text("Get in touch"),
            ),
          ),
        ],
      ),
    );
  }
}