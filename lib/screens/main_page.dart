import 'package:flutter/material.dart';
import 'package:my_portfolio/components/navigation_bar.dart';

import '../components/social_media_section.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF111111),
      body: LayoutBuilder(
        builder: (context, constraints) {
          bool isMobile = constraints.maxWidth < 600;

          // Common Text Styles for reuse
          TextStyle nameStyle = TextStyle(
            color: Colors.white,
            fontSize: isMobile
                ? constraints.maxWidth * 0.04
                : constraints.maxWidth * 0.02,
            fontWeight: FontWeight.w600,
          );

          TextStyle titleStyle = TextStyle(
            color: Colors.white70,
            fontSize: isMobile
                ? constraints.maxWidth * 0.08
                : constraints.maxWidth * 0.1,
            fontWeight: FontWeight.bold,
            letterSpacing: 5,
          );

          return Stack(
            children: [
              // Main Content Section
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: isMobile ? 20.0 : 50.0,
                  vertical: isMobile ? 30.0 : 50.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title Section
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'M E N U Z.',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: isMobile ? 14 : 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),

                    // Introduction Section
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "I'm",
                              style: titleStyle,
                            ),
                            const SizedBox(width: 10.0),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                'Menuzwantha Hewage.',
                                style: nameStyle,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10.0),
                        Text(
                          'Flutter Developer | Software Engineer',
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: isMobile ? 12 : 16,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),

                    // Navigation Bar Section
                    Center(
                      child: SizedBox(
                        height: 54,
                        width: isMobile
                            ? constraints.maxWidth * 0.7
                            : constraints.maxWidth * 0.35,
                        child: navigationBarTest(context, isMobile),
                      ),
                    ),
                  ],
                ),
              ),

              // Social Media Section (Top Right Corner Down)
              Positioned(
                top: isMobile ? 10 : 30,
                right: isMobile ? 10 : 30,
                child: SocialMediaIcons(isMobile: isMobile),
              ),
            ],
          );
        },
      ),
    );
  }
}