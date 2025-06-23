import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_portfolio/constants/sns_link.dart';
import '../constants/colors.dart';
import 'dart:js' as js;

class ContactsSection extends StatelessWidget {
  const ContactsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColor.bgLight1,
      width: screenWidth,
      child: Column(
        children: [
          //title
          const SelectableText(
            "Get in Touch",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(height: 40),

          // Phone number (clickable and copyable)
          GestureDetector(
            onTap: () {
              Clipboard.setData(const ClipboardData(text: "050-655-0336"));
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Phone number copied!")),
              );
            },
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.phone,
                  color: CustomColor.whitePrimary,
                  size: 24.0,
                ),
                SizedBox(width: 8),
                Text(
                  "050-655-0336",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: CustomColor.whitePrimary,
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),

          // Email (clickable and copyable)
          GestureDetector(
            onTap: () {
              Clipboard.setData(const ClipboardData(text: "jacobhaimoff@gmail.com"));
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Email copied!")),
              );
            },
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.email,
                  color: CustomColor.whitePrimary,
                  size: 24.0,
                ),
                SizedBox(width: 8),
                Text(
                  "jacobhaimoff@gmail.com",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: CustomColor.whitePrimary,
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),

          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
              maxHeight: 100,
            ),
            child: const SizedBox.shrink(),
          ),

          // SNS icon button links
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.github]);
                },
                child: Image.asset(
                  "assets/github.png",
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.linkedIn]);
                },
                child: Image.asset(
                  "assets/linkedin.png",
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.telegram]);
                },
                child: Image.asset(
                  "assets/telegram.png",
                  width: 28,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
