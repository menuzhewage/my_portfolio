import 'package:flutter/material.dart';

class SocialMediaIcons extends StatelessWidget {
  final bool isMobile;

  const SocialMediaIcons({super.key, required this.isMobile});

  @override
  Widget build(BuildContext context) {
    double spacing = isMobile ? 10.0 : 20.0; // Dynamic spacing

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: const Icon(Icons.facebook_outlined),
          color: Colors.white70,
          iconSize: isMobile ? 20 : 30,
          onPressed: () {
            // Add your Facebook link here
          },
        ),
        SizedBox(height: spacing),
        IconButton(
          icon: const Icon(Icons.local_movies_outlined),
          color: Colors.white70,
          iconSize: isMobile ? 20 : 30,
          onPressed: () {
            // Add your LinkedIn link here
          },
        ),
        SizedBox(height: spacing),
        IconButton(
          icon: const Icon(Icons.mail_outline),
          color: Colors.white70,
          iconSize: isMobile ? 20 : 30,
          onPressed: () {
            // Add your email action here
          },
        ),
        SizedBox(height: spacing),
        IconButton(
          icon: const Icon(Icons.access_alarm),
          color: Colors.white70,
          iconSize: isMobile ? 20 : 30,
          onPressed: () {
            // Add your GitHub link here
          },
        ),
      ],
    );
  }
}
