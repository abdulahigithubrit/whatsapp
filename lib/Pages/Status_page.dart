import 'package:flutter/material.dart';

import '../CustomUl/StatusPage/HeadOwnStatus.dart';
import '../CustomUl/StatusPage/OthersStatus.dart';

class StatusPages extends StatefulWidget {
  const StatusPages({Key? key}) : super(key: key);

  @override
  State<StatusPages> createState() => _StatusPagesState();
}

class _StatusPagesState extends State<StatusPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 48,
            child: FloatingActionButton(
              backgroundColor: Colors.blueGrey[100],
              elevation: 8,
              onPressed: (){},
              child: Icon(
                Icons.edit,
                color:Colors.blueGrey[900] ,

              ),
            ),
          ),
          SizedBox(height: 13,),

          FloatingActionButton(onPressed: (){},
            backgroundColor: Colors.greenAccent[7000],
            elevation: 6,
            child: Icon(Icons.camera_alt),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // SizedBox(height: 10,),
            HeadOwnStatus(),
            label("Recent update" ),

            OthersStatus(
              name: "ilyas Moha",
              imageName: "assets/bb.jpeg",
              time: "12:00",
              isSeen: true,
              statusNum: 1,
            ),
            OthersStatus(
              name: "ahmed ali",
              imageName: "assets/hh.jpeg",
              time: "11:30",
              isSeen: true,
              statusNum: 2,
            ),
            OthersStatus(
              name: "ayan abi",
              imageName: "assets/rr.jpeg",
              time: "11:01",
              isSeen: true,
              statusNum: 3,
            ),
            OthersStatus(
              name: "bashka",
              imageName: "assets/ff.jpeg",
              time: "10:20",
              isSeen: true,
              statusNum: 4,
            ),
            SizedBox(height: 10,),
            label("Viewed updates"),
            OthersStatus(
              name: "ilyas Moha",
              imageName: "assets/bb.jpeg",
              time: "12:00",
              isSeen: false,
              statusNum: 10,
            ),

            OthersStatus(
              name: "ayan abi",
              imageName: "assets/rr.jpeg",
              time: "11:01",
              isSeen: false,
              statusNum: 2,

            ),
            OthersStatus(
              name: "bashka",
              imageName: "assets/ff.jpeg",
              time: "10:20",
              isSeen: false,
              statusNum: 3,
            ),
          ],
        ),
      ),
    );
  }
  Widget label( String labelname)
  {
    return   Container(
      height: 33,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey[300],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13,vertical: 7),
        child: Text(labelname,
          style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
      ),
    );
  }
}
