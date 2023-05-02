// import 'dart:io';

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
  

//   Future<void> _getImageAndDetectFaces() async {
    
//   }
//   void _getEffort(){}

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Face Detection'),
//         ),
//         body: Column(
//           children: <Widget>[
//             Expanded(
//               child: const Center(
//                 child: const Text('No image selected.');
//               ),
//             ),
//             ElevatedButton(
//               child: Text('Select an image'),
//               onPressed: _getEffort,
//             ),
//             const Text('Detected faces: ${1}'),
//           ],
//         ),
//       ),
//     );
//   }
// }