import 'package:flutter/material.dart';
import 'dart:html' as html;

import '../constants/colors.dart';
import '../constants/welcome_message.dart';
import '../constants/about_me.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({
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
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: screenHeight / 1.2,
      constraints: const BoxConstraints(minHeight: 350),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Left side: Text and buttons
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Welcome message
              const SelectableText(
                welcomeMessage,
                style: TextStyle(
                  fontSize: 30,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary,
                ),
              ),
              const SizedBox(height: 20),

              // About Me title
              const SizedBox(
                width: 500,
                child: SelectableText(
                  "About Me",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: CustomColor.whitePrimary,
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // About Me text
              const SizedBox(
                width: 500,
                child: SelectableText(
                  aboutMe,
                  style: TextStyle(
                    fontSize: 16,
                    color: CustomColor.whitePrimary,
                    height: 1.5,
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // Buttons row
              Row(
                children: [
                  // Download CV button
                  ElevatedButton.icon(
                    onPressed: () {
                      html.AnchorElement()
                        ..href = '/assets/yaakov_haimoff.pdf'
                        ..download = 'Yaakov_Haimoff_CV.pdf'
                        ..click();
                    },
                    icon: const Icon(Icons.download),
                    label: const Text("Download CV"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xfff2a833),
                      foregroundColor: CustomColor.whitePrimary,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 20),
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),

                  // Get in touch button
                  ElevatedButton(
                    onPressed: () {
                      onGetInTouchTap(3);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xfff2a833),
                      foregroundColor: CustomColor.whitePrimary,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 25),
                      textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    child: const Text("Get in touch"),
                  ),
                ],
              ),
            ],
          ),

          // Right side: Profile image
          Image.asset(
            "assets/profile_pic.png",
            width: screenWidth / 3,
          ),
        ],
      ),
    );
  }
}