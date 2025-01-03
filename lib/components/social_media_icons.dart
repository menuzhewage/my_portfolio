import 'package:flutter/material.dart';

class SocialMediaIcons extends StatelessWidget {
  final bool isMobile;

  const SocialMediaIcons({
    Key? key,
    required this.isMobile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(Icons.facebook),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.home_outlined),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.mail_outlined),
          onPressed: () {},
        ),
      ],
    );
  }
}
