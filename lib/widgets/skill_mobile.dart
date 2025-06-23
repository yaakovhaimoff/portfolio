import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/skill_items.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 800.0),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Soft Skills title
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

          // Soft Skills
          for (int i = 0; i < platformItems.length; i++)
            Container(
              margin: const EdgeInsets.only(bottom: 5),
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: CustomColor.bgLight2,
                borderRadius: BorderRadius.circular(5),
              ),
              child: ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                leading: Image.asset(
                  platformItems[i]["img"],
                  width: 26,
                ),
                title: SelectableText(platformItems[i]["title"]),
              ),
            ),

          const SizedBox(height: 30),

          // Technical Skills title
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

          // Technical Skills
          Wrap(
            spacing: 10,
            runSpacing: 10,
            alignment: WrapAlignment.center,
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
          )
        ],
      ),
    );
  }
}