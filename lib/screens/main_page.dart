import 'package:flutter/material.dart';
import 'package:my_portfolio/components/navigation_bar.dart';
import '../components/intro_card.dart';
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
                    const SizedBox(height: 20),

                    // Modernized Introduction Section with Buttons inside the Card View
                    IntroCard(isMobile: isMobile, constraints: constraints),
                    Spacer(),

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

              // Social Media Section (Top Right Corner Down) - Visible only for larger screens
              if (!isMobile)
                Positioned(
                  top: 30,
                  right: 30,
                  child: SocialMediaIcons(isMobile: isMobile),
                ),
            ],
          );
        },
      ),
      drawer: Builder(
        builder: (context) {
          return Drawer(
            child: ListView(
              children: [
                // Add social media icons inside the drawer for mobile screens
                if (MediaQuery.of(context).size.width < 600)
                  Column(
                    children: [
                      ListTile(
                        title: SocialMediaIcons(isMobile: true),
                      ),
                    ],
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
