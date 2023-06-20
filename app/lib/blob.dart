// // // import 'package:flutter/material.dart';
// // // import 'package:flutter_cube/flutter_cube.dart';

// // // class BlobPage extends StatefulWidget {
// // //   @override
// // //   _HomePageState createState() => _HomePageState();
// // // }

// // // class _HomePageState extends State<BlobPage> {
// // //   late Object jet;
// // //   // Object shark;
// // //   @override
// // //   void initState() {
// // //     jet = Object(fileName: "assests/cube_model.obj");
// // //     // shark = Object(fileName: "assets/shark/shark.obj");
// // //     // shark.rotation.setValues(0, 90, 0);
// // //     // shark.updateTransform();
// // //     super.initState();
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         backgroundColor: Colors.red,
// // //         title: Text("Flutter 3D"),
// // //       ),
// // //       body: Container(
// // //         height: 300,
// // //         width: 300,
// // //         child: Column(
// // //           children: [
// // //             // Expanded(
// // //             //   child: Cube(
// // //             //     onSceneCreated: (Scene scene) {
// // //             //       scene.world.add(shark);
// // //             //       scene.camera.zoom = 10;
// // //             //     },
// // //             //   ),
// // //             // ),
// // //             Expanded(
// // //               child: Cube(
// // //                 onSceneCreated: (Scene scene) {
// // //                   scene.world.add(jet);
// // //                   scene.camera.zoom = 10;
// // //                 },
// // //               ),
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// // class ProjectWidget2 extends StatefulWidget {
// //   final String imageurl, tech, desc, title;
// //   ProjectWidget2(this.desc, this.imageurl, this.tech, this.title);
// //   @override
// //   _ProjectWidget2State createState() => _ProjectWidget2State();
// // }

// // class _ProjectWidget2State extends State<ProjectWidget2> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       height: MediaQuery.of(context).size.height * 0.8,
// //       width: MediaQuery.of(context).size.width -
// //           MediaQuery.of(context).size.width * 0.1,
// //       child: Stack(
// //         children: [
// //           Positioned(
// //             left: 40.0,
// //             child: Image(
// //               height: 550,
// //               image: AssetImage("assests/${widget.imageurl}"),
// //               fit: BoxFit.cover,
// //             ),
// //           ),
// //           Positioned(
// //             right: 40.0,
// //             top: 40.0,
// //             child: Container(
// //               child: Column(
// //                 crossAxisAlignment: CrossAxisAlignment.end,
// //                 children: [
// //                   Text(
// //                     widget.title,
// //                     style: const TextStyle(
// //                         color: Colors.white,
// //                         fontWeight: FontWeight.bold,
// //                         fontSize: 45.0),
// //                   ),
// //                   const SizedBox(height: 50),
// //                   Positioned(
// //                     top: 70,
// //                     right: 150,
// //                     child: Container(
// //                       width: MediaQuery.of(context).size.width * 0.33,
// //                       padding: EdgeInsets.all(8.0),
// //                       child: Center(
// //                           child: Padding(
// //                         padding: const EdgeInsets.all(18.0),
// //                         child: Text(
// //                           widget.desc,
// //                           style: const TextStyle(
// //                             color: Colors.white,
// //                             fontSize: 20.0,
// //                           ),
// //                         ),
// //                       )),
// //                       decoration: const BoxDecoration(
// //                         boxShadow: [
// //                           BoxShadow(
// //                             color: Colors.black54,
// //                             blurRadius: 5.0,
// //                           ),
// //                         ],
// //                         color: Color(0xff172943),
// //                         borderRadius: BorderRadius.all(Radius.circular(10)),
// //                       ),
// //                     ),
// //                   ),
// //                   const SizedBox(
// //                     height: 20.0,
// //                   ),
// //                   Container(
// //                     padding: const EdgeInsets.all(8.0),
// //                     child: Text(
// //                       widget.tech,
// //                       style: const TextStyle(
// //                         color: Colors.white,
// //                         fontSize: 20.0,
// //                       ),
// //                     ),
// //                   ),
// //                   const SizedBox(
// //                     height: 20.0,
// //                   ),
// //                   const Image(
// //                     height: 60,
// //                     image: AssetImage("assests/github.png"),
// //                     fit: BoxFit.cover,
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// class _ProjectWidgetState extends State<ProjectWidget> {
//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;

//     if (screenWidth >= 1000) {
//       // Render as the original code for screen width >= 1000
//       return Column(
//         children: [
//           Align(
//             alignment: Alignment.centerLeft,
//             child: Text(
//               widget.title,
//               style: TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 45.0,
//               ),
//             ),
//           ),
//           SizedBox(height: 50),
//           Container(
//             height: MediaQuery.of(context).size.height * 0.8,
//             child: Stack(
//               children: [
//                 Positioned(
//                   right: 40.0,
//                   child: Image(
//                     height: screenWidth >= 1300
//                         ? 550
//                         : screenWidth >= 1100
//                             ? 400
//                             : 300,
//                     image: AssetImage("assests/${widget.imageurl}"),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 Positioned(
//                   left: 40.0,
//                   top: 40.0,
//                   child: Container(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Positioned(
//                           top: 70,
//                           left: 150,
//                           child: Container(
//                             width: screenWidth * 0.33,
//                             padding: EdgeInsets.all(8.0),
//                             child: Center(
//                               child: Padding(
//                                 padding: const EdgeInsets.all(18.0),
//                                 child: Text(
//                                   widget.desc,
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 20.0,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             decoration: BoxDecoration(
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.black54,
//                                   blurRadius: 5.0,
//                                 ),
//                               ],
//                               color: Color(0xff172943),
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(10)),
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 20.0,
//                         ),
//                         Container(
//                           padding: EdgeInsets.all(8.0),
//                           child: Text(
//                             widget.tech,
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 20.0,
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 20.0,
//                         ),
//                         Image(
//                           height: 60,
//                           image: AssetImage("assests/github.png"),
//                           fit: BoxFit.cover,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       );
//     } else {
//       // Render as a card for screen width < 1000
//       return Container(
//         // height: 300,
//         padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
//         decoration: BoxDecoration(
//           // boxShadow: [
//           //   // BoxShadow(
//           //   //   color: Colors.black54,
//           //   //   blurRadius: 30.0,
//           //   // ),
//           // ],
//           // color: Color(0xff172943),
//           border: Border.all(color: Color(0xff48E1EC)),
//           borderRadius: BorderRadius.all(Radius.circular(10)),
//         ),
//         width: MediaQuery.of(context).size.width -
//             MediaQuery.of(context).size.width * 0.2,
//         child: Card(
//           // width: MediaQuery.of(context).size.width -
//           //     MediaQuery.of(context).size.width * 0.1,
//           color: Color(0xff0A192F),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Center(
//                 child: Image(
//                   // height: 200,
//                   width: MediaQuery.of(context).size.width,
//                   image: AssetImage("assests/${widget.imageurl}"),
//                   fit: BoxFit.fitWidth,
//                 ),
//               ),
//               SizedBox(height: 10),
//               Text(
//                 widget.title,
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,
//                   // fontSize: 35.0,
//                   fontSize: MediaQuery.of(context).size.width >= 770
//                       ? 35
//                       : MediaQuery.of(context).size.width >= 530
//                           ? 30
//                           : 25,
//                 ),
//               ),
//               SizedBox(height: 10),
//               Text(
//                 widget.tech,
//                 style: TextStyle(
//                   color: Color(0xff48E1EC),
//                   // fontSize: 20.0,
//                   fontSize: MediaQuery.of(context).size.width >= 770
//                       ? 20
//                       : MediaQuery.of(context).size.width >= 530
//                           ? 18
//                           : 16,
//                 ),
//               ),
//               SizedBox(height: 10),
//               Text(
//                 widget.desc,
//                 style: TextStyle(
//                   color: Colors.white,
//                   // fontSize: 20.0,
//                   fontSize: MediaQuery.of(context).size.width >= 770
//                       ? 20
//                       : MediaQuery.of(context).size.width >= 530
//                           ? 18
//                           : 16,
//                 ),
//               ),
//               // Padding(
//               //   padding: EdgeInsets.only(
//               //       left: (MediaQuery.of(context).size.width / 100) * 5),
//               //   child: Image(
//               //     height: 30,
//               //     image: AssetImage("assests/github.png"),
//               //     fit: BoxFit.cover,
//               //   ),
//               // ),
//             ],
//           ),
//         ),
//       );
//     }
//   }
// }
