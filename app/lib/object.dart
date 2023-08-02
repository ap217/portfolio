// import 'dart:html';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

import 'glow_effect.dart';

class ObjectPage extends StatefulWidget {
  final double screenWidth; // Add this parameter to accept screenWidth

  const ObjectPage({super.key, required this.screenWidth});
  @override
  _ObjectPageState createState() => _ObjectPageState();
}

class _ObjectPageState extends State<ObjectPage>
    with SingleTickerProviderStateMixin {
  // late Object jet;
  // late Object shark;
  late Object earth;
  // late Object football;
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 7),
    );
    animation = CurvedAnimation(parent: controller, curve: Curves.linear);
    controller.repeat();

    earth = Object(fileName: "assets/earth/earth_ball.obj");
    earth.rotation.setValues(132, 200, 100);
    earth.updateTransform();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: animation,
      child: Column(
        children: [
          Expanded(
            child: GlowEffect(
              // radius: if(widget.screenWidth > ), // Adjust the glow effect radius as needed
              radius: 20,
              // glowColor: Colors.blue, // Adjust the glow color as needed
              // glowColor: Color.fromARGB(255, 79, 106, 194),
              glowColor: const Color.fromARGB(255, 99, 155, 195),
              child: Cube(
                onSceneCreated: (Scene scene) {
                  scene.world.add(earth);
                  scene.camera.zoom = widget.screenWidth > 900
                      ? 10
                      : widget.screenWidth > 730
                          ? 10
                          : 10;
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class NeonPainter extends CustomPainter {
//   Paint neonPaint = Paint();

//   NeonPainter() {
//     neonPaint.color = const Color(0xFF3F5BFA);
//     neonPaint.strokeWidth = 2.5;
//     // neonPaint.shader = /// how to create a shader or something for that?
//     // neonPaint.someOtherProperty///
//   }

//   @override
//   void paint(Canvas canvas, Size size) {
//     drawLine(canvas, size.width / 2 - 50, size.height / 2, size.width / 2 + 50,
//         size.height / 2);
//     drawLine(canvas, size.width / 2 + 50, size.height / 2, size.width / 2 + 100,
//         size.height / 2 + 50);
//     drawLine(canvas, size.width / 2 + 100, size.height / 2 + 50,
//         size.width / 2 - 100, size.height / 2 + 50);
//     drawLine(canvas, size.width / 2 - 100, size.height / 2 + 50,
//         size.width / 2 - 50, size.height / 2);
//   }

//   void drawLine(canvas, double x1, double y1, double x2, double y2) {
//     canvas.drawLine(Offset(x1, y1), Offset(x2, y2), neonPaint);
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return true;
//   }
// }
