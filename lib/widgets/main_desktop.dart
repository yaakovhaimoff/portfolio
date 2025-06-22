import 'package:flutter/material.dart';

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
					// Intro + About Me
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

							// "About Me" title
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

							// About Me paragraph
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

							// Get in touch button
							SizedBox(
								width: 250,
								child: ElevatedButton(
									onPressed: () {
										onGetInTouchTap(3);
									},
									style: ElevatedButton.styleFrom(
										backgroundColor: CustomColor.yellowPrimary,
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
							),
						],
					),

					// Profile image
					Image.asset(
						"assets/profile_pic.png",
						width: screenWidth / 3,
					),
				],
			),
		);
	}
}