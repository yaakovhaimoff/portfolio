import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/skill_items.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Soft Skills column
        Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 12.0),
              child: SelectableText(
                "Soft Skills",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: CustomColor.whitePrimary,
                ),
              ),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 450,
              ),
              child: Wrap(
                spacing: 5.0,
                runSpacing: 5.0,
                children: [
                  for (int i = 0; i < platformItems.length; i++)
                    Container(
                      width: 200,
                      decoration: BoxDecoration(
                        color: CustomColor.bgLight2,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 10.0,
                        ),
                        leading: Image.asset(
                          platformItems[i]["img"],
                          width: 26.0,
                        ),
                        title: SelectableText(platformItems[i]["title"]),
                      ),
                    )
                ],
              ),
            ),
          ],
        ),

        const SizedBox(width: 50),

        // Technical Skills column
        Expanded(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 12.0),
                child: SelectableText(
                  "Technical Skills",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: CustomColor.whitePrimary,
                  ),
                ),
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(maxHeight: 500),
                child: Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    for (int i = 0; i < skillItems.length; i++)
                      Chip(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 16),
                        backgroundColor: CustomColor.bgLight2,
                        label: SelectableText(skillItems[i]["title"]),
                        avatar: Image.asset(skillItems[i]["img"]),
                      ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}