// import 'package:chatapp/Model/ChatModel.dart';
// import 'package:chatapp/Pages/CameraPage.dart';
// import 'package:chatapp/Pages/ChatPage.dart';
import 'package:flutter/material.dart';
import 'package:whatsappuntitled3/Pages/ChatPage.dart';
import 'package:whatsappuntitled3/Pages/Status_page.dart';
import '../Pages/Status_page.dart';

import '../Pages/CameraPage.dart';
//
class Homescreen extends StatefulWidget {
  Homescreen({Key? key,}): super(key: key);
//   final List<ChatModel> chatmodels;
//   final ChatModel sourchat;
//
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> with SingleTickerProviderStateMixin {

  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Whatsapp Clone"),
    actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
    PopupMenuButton<String>(
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext contesxt) {
              return [
                PopupMenuItem(
                  child: Text("New group"),
                  value: "New group",
                ),
                PopupMenuItem(
                  child: Text("New broadcast"),
                  value: "New broadcast",
                ),
                PopupMenuItem(
                  child: Text("Whatsapp Web"),
                  value: "Whatsapp Web",
                ),
                PopupMenuItem(
                  child: Text("Starred messages"),
                  value: "Starred messages",
                ),
                PopupMenuItem(
                  child: Text("Settings"),
                  value: "Settings",
                ),
              ];
            },
          )
        ],



    bottom: TabBar(
          controller: _controller,
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "CHATS",
            ),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALLS",
            )
          ],
        ),
      ),
    body: TabBarView(
        controller: _controller,
        children: [
          // CameraPage(),
          // ChatPage(
          //   chatmodels: widget.chatmodels,
          //   sourchat: widget.sourchat,

          CameraPage(),
          // Text('camera'),
          ChatPage(),
          StatusPages(),


          Text("Calls"),
        ],
      ),

    );
        }}

//       appBar: AppBar(
//         title: Text("Whatsapp Clone"),
//         actions: [
//           IconButton(icon: Icon(Icons.search), onPressed: () {}),
//           PopupMenuButton<String>(
//             onSelected: (value) {
//               print(value);
//             },
//             itemBuilder: (BuildContext contesxt) {
//               return [
//                 PopupMenuItem(
//                   child: Text("New group"),
//                   value: "New group",
//                 ),
//                 PopupMenuItem(
//                   child: Text("New broadcast"),
//                   value: "New broadcast",
//                 ),
//                 PopupMenuItem(
//                   child: Text("Whatsapp Web"),
//                   value: "Whatsapp Web",
//                 ),
//                 PopupMenuItem(
//                   child: Text("Starred messages"),
//                   value: "Starred messages",
//                 ),
//                 PopupMenuItem(
//                   child: Text("Settings"),
//                   value: "Settings",
//                 ),
//               ];
//             },
//           )
//         ],
//         bottom: TabBar(
//           controller: _controller,
//           indicatorColor: Colors.white,
//           tabs: [
//             Tab(
//               icon: Icon(Icons.camera_alt),
//             ),
//             Tab(
//               text: "CHATS",
//             ),
//             Tab(
//               text: "STATUS",
//             ),
//             Tab(
//               text: "CALLS",
//             )
//           ],
//         ),
//       ),
//       body: TabBarView(
//         controller: _controller,
//         children: [
//           CameraPage(),
//           ChatPage(
//             chatmodels: widget.chatmodels,
//             sourchat: widget.sourchat,
//           ),
//           Text("STATUS"),
//           Text("Calls"),
//         ],
//       ),
//     );
//   }
// }