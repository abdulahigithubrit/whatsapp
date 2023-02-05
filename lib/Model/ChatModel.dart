class ChatModel {
  String name;
  String icon;
  bool isGroup;
  String time;
  String currentMessage;
  String status;
  bool select =false;

  ChatModel({


    required this.isGroup,
    required this.name,
    required this.icon,
    required this.time,
    required this.currentMessage,
    required this.status,
    this.select=false,

    // this.id,
  });
//   String name;
//   String icon;
//   bool isGroup;
//   String time;
//   String currentMessage;
//   String status;
//   bool select = false;
//   int id;
//   ChatModel({
//     this.name,
//     this.icon,
//     this.isGroup,
//     this.time,
//     this.currentMessage,
//     this.status,
//     this.select = false,
//     this.id,
//   });
}