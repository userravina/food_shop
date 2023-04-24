//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// import '../Provider/create_provider.dart';
//
// class Home_Screen extends StatefulWidget {
//   const Home_Screen({Key? key}) : super(key: key);
//
//   @override
//   State<Home_Screen> createState() => _Home_ScreenState();
// }
//
// class _Home_ScreenState extends State<Home_Screen> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//             title: Text("Count_app"),
//             centerTitle: true,
//             backgroundColor: Colors.green.shade400),backgroundColor: Colors.green.shade50,
//         body: Center(
//           child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//             Center(
//                child: Consumer<create_provider>(
//                  builder: (context, value, child) => Text("${value.i}",style: TextStyle(fontSize: 20)),
//                ),
//              ),
//             SizedBox(
//               height: 100,
//             ),
//             ElevatedButton(
//               onPressed: () { Provider.of<create_provider>(context, listen: false).add();},
//               child: Text("increment"),
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.green.shade400,
//                 shadowColor: Colors.black,
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             ElevatedButton(
//               onPressed: () { Provider.of<create_provider>(context, listen: false).sub();},
//               child: Text("decrement"),
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.green.shade400,
//                 shadowColor: Colors.black,
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             ElevatedButton(
//               onPressed: () { Provider.of<create_provider>(context, listen: false).mul();},
//               child: Text("2multi"),
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.green.shade400,
//                 shadowColor: Colors.black,
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             ElevatedButton(
//               onPressed: () { Provider.of<create_provider>(context, listen: false).multi();},
//               child: Text("3multi"),
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.green.shade400,
//                 shadowColor: Colors.black,
//               ),
//             ),
//           ]),
//         ),
//         // body: Center(
//         //   child: Consumer<create_provider>(
//         //     builder: (context, value, child) => Text("${value.i}"),
//         //   ),
//         // ),
//         // floatingActionButton: FloatingActionButton(
//         //   onPressed: () {
//         //     Provider.of<create_provider>(context, listen: false).add();
//         //   },
//         //   child: Icon(Icons.add),
//         // ),
//       ),
//     );
//   }
// }
