import 'package:flutter/material.dart';

class HoverTextButton extends StatefulWidget {
  final VoidCallback onPressed;
  final String text;

  const HoverTextButton({
    required this.onPressed,
    required this.text,
  });

  @override
  _HoverTextButtonState createState() => _HoverTextButtonState();
}

class _HoverTextButtonState extends State<HoverTextButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: TextButton(
        onPressed: widget.onPressed,
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.01,
              vertical: 18.0)),
          side: isHovered
              ? MaterialStateProperty.all<BorderSide>(
                  const BorderSide(color: Color(0xff48E1EC), width: 1.0),
                )
              : MaterialStateProperty.all<BorderSide>(BorderSide.none),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
        ),
        child: Text(
          widget.text,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 20.0,
              letterSpacing: 2.0,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
