import 'package:flutter/material.dart';
import 'package:whatsappuntitled3/CustomUl/AvtarCard.dart';
import 'package:whatsappuntitled3/CustomUl/ButtonCard.dart';
import 'package:whatsappuntitled3/CustomUl/ContactCard.dart';
import 'package:whatsappuntitled3/Model/ChatModel.dart';

import '../Model/ChatModel.dart';
import '../Model/ChatModel.dart';
import '../Model/ChatModel.dart';
//
class CreateGroup extends StatefulWidget {
  CreateGroup({Key? key}) : super(key: key);

  @override
  _CreateGroupState createState() => _CreateGroupState();
}


class _CreateGroupState extends State<CreateGroup> {
  List<ChatModel> contacts = [
    ChatModel(
      name: "ilayas moha",
      status: "A full  stac developer",

      currentMessage:"class one ha la imaadow usheeg ardayda",
      time: "11:20",
      icon: "person.svg", isGroup: true, ),
    ChatModel(
      name: "ustaad sharma",
      status: "At work ",

      currentMessage:"class one ha la imaadow usheeg ardayda",
      time: "11:20",
      icon: "person.svg", isGroup: true,
    ),
    ChatModel(
      name: "mohamed ali",
      status: "majiro of wax bixiyay owgii faqir ku noqday",

      currentMessage:"class one ha la imaadow usheeg ardayda",
      time: "11:20",
      icon: "person.svg", isGroup: true,),
    ChatModel(
      name: "Abukar",
      status: "Xasusnow Ale markasta",

      currentMessage:"class one ha la imaadow usheeg ardayda",
      time: "11:20",
      icon: "person.svg", isGroup: true, ),
    ChatModel(
      name: "Asli",
      status: "ilove you moma",
      currentMessage:"class one ha la imaadow usheeg ardayda",
      time: "11:20",
      icon: "person.svg", isGroup: true,
    ),
    ChatModel(
      name: "doctor adbidon",
      status: "Urgent call ony",

      currentMessage:"class one ha la imaadow usheeg ardayda",
      time: "11:20",
      icon: "person.svg", isGroup: true,)

  ];
  List<ChatModel> groupmember = [];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("New Group",style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold
              ),), Text("Add particpants",style: TextStyle(
                fontSize: 13,
              ),)
            ],
          ),
          actions: [
            IconButton(icon: Icon(Icons.search,size: 26,
            ),
                onPressed: (){}),
        ],
        ),
        body: Stack(
          children: [

            ListView.builder(
                itemCount: contacts.length+1,
                itemBuilder: (context,index)
                {
                  if(index==0)
                    {
                      return Container(
                        height: groupmember.length > 0?90:10,
                      );

                    }

                  return InkWell(
                    onTap: (){
                setState(() {
                if(contacts[index  ].select == true) {
                groupmember.remove(contacts[index-1]);
                contacts[index-1].select = false;
                }else {
                groupmember.add(contacts[index-1]);
                contacts[index -1].select =true;
                }

                });



                    },
                      child:
                      ContactCard(
                        contact: contacts[index -1],
                      ));
                }),
            groupmember.length >0?
            Column(
              children: [
                Container(
                  height: 75,
                    color: Colors.white,

                  child:  ListView.builder(
                    scrollDirection: Axis.horizontal,
                      itemCount: contacts.length,
                      itemBuilder: (context,index)
                    {
                      if(contacts[index].select==true)
                        {
                          return InkWell(
                            onTap: (){
                              setState(() {
                                groupmember.remove(contacts[index]);
                                contacts[index].select = false;

                              });
                            },
                            child: AvatarCard(contact:contacts[index],
                            ),
                          );
                        }
                      else{
                        return Container();
                      }
                    }),
                ),
                Divider(
                  thickness: 1,
                )
              ],
            ):Container(),
          ],
        ),

    );
  }
}













































// import 'package:chatapp/CustomUI/AvtarCard.dart';
// import 'package:chatapp/CustomUI/ButtonCard.dart';
// import 'package:chatapp/CustomUI/ContactCard.dart';
// import 'package:chatapp/Model/ChatModel.dart';
// import 'package:flutter/material.dart';
//
// class CreateGroup extends StatefulWidget {
//   CreateGroup({Key key}) : super(key: key);
//
//   @override
//   _CreateGroupState createState() => _CreateGroupState();
// }
//
// class _CreateGroupState extends State<CreateGroup> {
//   List<ChatModel> contacts = [
//     ChatModel(name: "Dev Stack", status: "A full stack developer"),
//     ChatModel(name: "Balram", status: "Flutter Developer..........."),
//     ChatModel(name: "Saket", status: "Web developer..."),
//     ChatModel(name: "Bhanu Dev", status: "App developer...."),
//     ChatModel(name: "Collins", status: "Raect developer.."),
//     ChatModel(name: "Kishor", status: "Full Stack Web"),
//     ChatModel(name: "Testing1", status: "Example work"),
//     ChatModel(name: "Testing2", status: "Sharing is caring"),
//     ChatModel(name: "Divyanshu", status: "....."),
//     ChatModel(name: "Helper", status: "Love you Mom Dad"),
//     ChatModel(name: "Tester", status: "I find the bugs"),
//   ];
//   List<ChatModel> groupmember = [];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 "New Group",
//                 style: TextStyle(
//                   fontSize: 19,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               Text(
//                 "Add participants",
//                 style: TextStyle(
//                   fontSize: 13,
//                 ),
//               )
//             ],
//           ),
//           actions: [
//             IconButton(
//                 icon: Icon(
//                   Icons.search,
//                   size: 26,
//                 ),
//                 onPressed: () {}),
//           ],
//         ),
//         floatingActionButton: FloatingActionButton(
//             backgroundColor: Color(0xFF128C7E),
//             onPressed: () {},
//             child: Icon(Icons.arrow_forward)),
//         body: Stack(
//           children: [
//             ListView.builder(
//                 itemCount: contacts.length + 1,
//                 itemBuilder: (context, index) {
//                   if (index == 0) {
//                     return Container(
//                       height: groupmember.length > 0 ? 90 : 10,
//                     );
//                   }
//                   return InkWell(
//                     onTap: () {
//                       setState(() {
//                         if (contacts[index - 1].select == true) {
//                           groupmember.remove(contacts[index - 1]);
//                           contacts[index - 1].select = false;
//                         } else {
//                           groupmember.add(contacts[index - 1]);
//                           contacts[index - 1].select = true;
//                         }
//                       });
//                     },
//                     child: ContactCard(
//                       contact: contacts[index - 1],
//                     ),
//                   );
//                 }),
//             groupmember.length > 0
//                 ? Align(
//               child: Column(
//                 children: [
//                   Container(
//                     height: 75,
//                     color: Colors.white,
//                     child: ListView.builder(
//                         scrollDirection: Axis.horizontal,
//                         itemCount: contacts.length,
//                         itemBuilder: (context, index) {
//                           if (contacts[index].select == true)
//                             return InkWell(
//                               onTap: () {
//                                 setState(() {
//                                   groupmember.remove(contacts[index]);
//                                   contacts[index].select = false;
//                                 });
//                               },
//                               child: AvatarCard(
//                                 chatModel: contacts[index],
//                               ),
//                             );
//                           return Container();
//                         }),
//                   ),
//                   Divider(
//                     thickness: 1,
//                   ),
//                 ],
//               ),
//               alignment: Alignment.topCenter,
//             )
//                 : Container(),
//           ],
//         ));
//   }
// }