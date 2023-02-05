
// import 'package:chatapp/Model/ChatModel.dart';
// import 'package:chatapp/Screens/SelectContact.dart';
import 'package:flutter/material.dart';

import 'package:whatsappuntitled3/CustomUl/CustomCard.dart';

import '../Model/ChatModel.dart';
import '../Screens/SelectContact.dart';
//
class ChatPage extends StatefulWidget {
  ChatPage({Key? key,}): super(key: key);
//   final List<ChatModel> chatmodels;
//   final ChatModel sourchat;
//
  @override
  _ChatPageState createState() => _ChatPageState();

}
//
class _ChatPageState extends State<ChatPage> {
  List<ChatModel>chats=
      [
        ChatModel(name: "ali farah",
            isGroup: false,
            currentMessage:"hi Every one",

            time: "4:00",
            icon: "person.svg",
            status: "firs",
        ),
        ChatModel(name: "Ilyas Boy",
          isGroup: false,
          currentMessage:"xagee joogtah",
          time: "23:32am",
          icon: "groups.svg",
          status: "firs" ,
        ),
        ChatModel(name: "mather",
          isGroup: true,
          currentMessage:"ma aragtay",
          time: "7:00pm",
          icon: "person.svg",
            status: "firs",
        ),
        ChatModel(name: "hanad jamac",
          isGroup: false,
          currentMessage:"xafada iigu imow",
          time: "12:00",
          icon: "groups.svg",
            status: "firs",
        ),
        ChatModel(name: "ustad hashim",
          isGroup: true,
          currentMessage:"class one ha la imaadow usheeg ardayda",
          time: "11:20",
          icon: "person.svg",
            status: "firs",
        ),

      ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (builder) => SelectContact()));
        },
        child: Icon(
          Icons.chat),
      ),
    body: ListView.builder(
      itemCount: chats.length,
      itemBuilder: (context,index)=>CustomCard(chatModel:chats[index],
    ),


//         itemCount: widget.chatmodels.length,
//         itemBuilder: (contex, index) => CustomCard(
//           chatModel: widget.chatmodels[index],
//           sourchat: widget.sourchat,
//         ),
//       ),



    ),
    );
  }
}
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.push(context,
//               MaterialPageRoute(builder: (builder) => SelectContact()));
//         },
//         child: Icon(
//           Icons.chat,
//           color: Colors.white,
//         ),
//       ),
//       body: ListView.builder(
//         itemCount: widget.chatmodels.length,
//         itemBuilder: (contex, index) => CustomCard(
//           chatModel: widget.chatmodels[index],
//           sourchat: widget.sourchat,
//         ),
//       ),
//     );
//   }
// }