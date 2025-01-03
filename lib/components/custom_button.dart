import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isMobile;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.isMobile,
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool _isHovered = false; // Track hover state

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: InkWell(
        onTap: widget.onPressed,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200), // Animation duration
          curve: Curves.easeInOut, // Smooth easing for color transition
          padding: EdgeInsets.symmetric(
            horizontal: widget.isMobile ? 20.0 : 30.0,
            vertical: widget.isMobile ? 12.0 : 16.0,
          ),
          decoration: BoxDecoration(
            color: _isHovered ? Colors.white : const Color.fromARGB(255, 0, 0, 0),
            borderRadius: BorderRadius.circular(25.0),
            border: Border.all(
              color: _isHovered ? Colors.black : Colors.white,
            ),
            boxShadow: [
              BoxShadow(
                // ignore: deprecated_member_use
                color: Colors.black.withOpacity(0.2),
                offset: const Offset(0, 5),
                blurRadius: 10.0,
              ),
            ],
          ),
          child: Center(
            child: AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 200), // Animation for text color
              style: TextStyle(
                color: _isHovered ? Colors.black : const Color.fromARGB(255, 173, 172, 172),
                fontSize: widget.isMobile ? 14 : 18,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.5,
              ),
              child: Text(widget.text),
            ),
          ),
        ),
      ),
    );
  }
}
