// import 'package:chatapp/Model/ChatModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Model/ChatModel.dart';
// import 'package:flutter_svg/flutter_svg.dart';
//
class ButtonCard extends StatelessWidget {
  const ButtonCard({  Key? key,required this.name,required this.icon}) : super(key: key);
  final String name;
  final IconData icon;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 23,
        child: Icon (icon,size: 25,color: Colors.white,),
        backgroundColor: Color(0xff25D366),
      ),
      title: Text(
        name,
        style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold
        )
        ,),


    );
  }
}



//       leading: Container(
//         width: 50,
//         height: 53,
//         child: Stack(
//           children: [
//             CircleAvatar(
//               radius: 23,
//               child: SvgPicture.asset(
//                 "assets/person.svg",
//                 color: Colors.white,
//                 height: 30,
//                 width: 30,
//               ),
//               backgroundColor: Colors.blueGrey[200],
//             ),
//             contact.select
//                 ? Positioned(
//               bottom: 4,
//               right: 5,
//               child: CircleAvatar(
//                 backgroundColor: Colors.teal,
//                 radius: 11,
//                 child: Icon(
//                   Icons.check,
//                   color: Colors.white,
//                   size: 18,
//                 ),
//               ),
//             )
//                 : Container(),
//           ],
//         ),
//       ),
//       title: Text(
//         contact.name,
//         style: TextStyle(
//           fontSize: 15,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//       subtitle: Text(
//         contact.status,
//         style: TextStyle(
//           fontSize: 13,
//         ),
//       ),
//     );
//   }
// }





























































//
// import 'package:flutter/material.dart';
//
// class ButtonCard extends StatelessWidget {
//   const ButtonCard({Key key, this.name, this.icon}) : super(key: key);
//   final String name;
//   final IconData icon;
//
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       leading: CircleAvatar(
//         radius: 23,
//         child: Icon(
//           icon,
//           size: 26,
//           color: Colors.white,
//         ),
//         backgroundColor: Color(0xFF25D366),
//       ),
//       title: Text(
//         name,
//         style: TextStyle(
//           fontSize: 15,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//     );
//   }
// }