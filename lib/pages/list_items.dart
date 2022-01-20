// import 'package:flutter/material.dart';
//
// class ListItems {
//   int index;
//   bool isOnTap = false;
//
//   ListItems({required this.index, required this.onTap});
//
//   Widget buildGridTile() {
//     return GridTile(
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(25),
//           image: DecorationImage(
//             image: AssetImage("assets/images/img_${index % 5}.png"),
//             fit: BoxFit.cover,
//           ),
//         ),
//       ),
//       footer: const GridTileBar(
//           backgroundColor: Colors.transparent,
//           subtitle: Text(""),
//           trailing: IconButton(
//               onPressed: () {
//                 isOnTap = !isOnTap;
//               },
//               icon: Icon(
//                 onTap ? Icons.star : Icons.star_border_outlined,
//                 size: 35,
//                 color: Colors.yellow,
//               ))),
//     );
//   }
//   void onTap () {
//     Icon(Icons.star, size: 35, color: Colors.yellow,);
//   }
// }
