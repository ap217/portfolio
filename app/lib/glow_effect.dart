import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class GlowEffect extends StatelessWidget {
  final double radius;
  final Color glowColor;
  final Widget child;

  GlowEffect({
    required this.radius,
    required this.glowColor,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _GlowPainter(radius: radius, glowColor: glowColor),
      child: child,
    );
  }
}

class _GlowPainter extends CustomPainter {
  final double radius;
  final Color glowColor;

  _GlowPainter({
    required this.radius,
    required this.glowColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = glowColor
      ..maskFilter = MaskFilter.blur(BlurStyle.outer, radius);
    final rect = Offset.zero & size;
    canvas.drawOval(rect.inflate(radius), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
