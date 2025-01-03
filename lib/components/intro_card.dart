import 'package:flutter/material.dart';
import '../components/custom_button.dart';

class IntroCard extends StatelessWidget {
  final bool isMobile;
  final BoxConstraints constraints;

  const IntroCard({
    Key? key,
    required this.isMobile,
    required this.constraints,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8, // Adds shadow for better depth
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15), // Rounded corners
      ),
      color: Color(0xFF1E1E1E), // Background color of the card
      margin: EdgeInsets.symmetric(
        horizontal: isMobile ? 20.0 : 50.0, // Horizontal margin for card
        vertical: 20.0, // Vertical margin
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: isMobile ? 20.0 : 50.0, // Padding inside the card
          vertical: 30.0, // Vertical padding inside the card
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello, I'm",
              style: TextStyle(
                color: Colors.white,
                fontSize: isMobile
                    ? constraints.maxWidth * 0.04
                    : constraints.maxWidth * 0.02,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 10.0),
            Stack(
              children: [
                // Background line effect
                Positioned(
                  bottom: 5,
                  child: Container(
                    height: 2,
                    width: constraints.maxWidth * 0.5,
                    color: Colors.white24,
                  ),
                ),
                Text(
                  'Menuzwantha Hewage',
                  style: TextStyle(
                    fontSize: isMobile
                        ? constraints.maxWidth * 0.06
                        : constraints.maxWidth * 0.04,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Text(
              'Flutter Developer  |  Software Engineer  |  AI Engineer',
              style: TextStyle(
                color: Colors.white70,
                fontSize: isMobile ? 12 : 16,
              ),
            ),
            const SizedBox(height: 30),

            // Buttons Section inside the Card
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomButton(
                  text: 'View Portfolio',
                  onPressed: () {
                    // Navigate to Portfolio
                  },
                  isMobile: isMobile,
                ),
                const SizedBox(width: 20),
                CustomButton(
                  text: 'Contact Me',
                  onPressed: () {
                    // Navigate to Contact section or open email
                  },
                  isMobile: isMobile,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
