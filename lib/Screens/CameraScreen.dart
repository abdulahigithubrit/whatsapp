 import 'dart:html';
import 'dart:math';
// import 'package:camera/camera.dart';
// import 'package:chatapp/Screens/CameraView.dart';
// import 'package:chatapp/Screens/VideoView.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:path/path.dart';
// import 'package:path_provider/path_provider.dart';


class CameraScreen extends StatefulWidget {

  @override
  _CameraScreenState createState() => _CameraScreenState();
}
class _CameraScreenState extends State<CameraScreen> {
 File? imageFile;
 void _getFromcamera() async{
   XFile? pickedFile = await ImagePicker().pickImage(
     source: ImageSource.camera,
     maxHeight: 1080,
      maxWidth: 1080,
      );
 setState(() {
   // imageFile = File(pickedFile!.path);
 });

 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: [
          SizedBox(height: 50,),
          imageFile != null ?
          Container(
                // child: Image.file(imageFile!),
              ):
              Container(
                child: Icon(
                  Icons.camera_alt_rounded,color:Colors.green,size:MediaQuery.of(context).size.width * .6,
              ),
              ),
           Padding(
             padding:const EdgeInsets.all(30.0),
            child:ElevatedButton(
               child:Text("capture image wiwh camera"),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.purple),
            padding:  MaterialStateProperty.all(EdgeInsets.all(12)),
            textStyle: MaterialStateProperty.all(TextStyle(fontSize: 16))
          ), onPressed: () {
                 _getFromcamera();
            },
      ),
),
      ],


      ),
);
}
}












//  import 'dart:math';
// import 'package:camera/camera.dart';
// // import 'package:chatapp/Screens/CameraView.dart';
// // import 'package:chatapp/Screens/VideoView.dart';
// import 'package:flutter/material.dart';
// import 'package:path/path.dart';
// // import 'package:path_provider/path_provider.dart';
//
//  List<CameraDescription> cameras;
// class CameraScreen extends StatefulWidget {
//   CameraScreen({Key? key}) : super(key: key);
//   @override
//   _CameraScreenState createState() => _CameraScreenState();
// }
// class _CameraScreenState extends State<CameraScreen> {
//   late CameraController _cameraController;
//   late Future<void> cameraValue;
//   // bool isRecoring = false;
//   // bool flash = false;
//   // bool iscamerafront = true;
//   // double transform = 0;
//   @override
//   void initState()
//   { super.initState();
//     _cameraController = CameraController(cameras[0], ResolutionPreset.high);
//     cameraValue = _cameraController.initialize();
//   }
//   @override
//   // void dispose() {
//   //   super.dispose();
//   //   _cameraController.dispose();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       body: Stack(
//         children: [
//           FutureBuilder(
//               future: cameraValue,
//               builder: (context,snaphot){
//             if(snaphot.connectionState==ConnectionState.done){
//               return CameraPreview(_cameraController);
//     }
//             else
//               {
//                 return Center(child: CircularProgressIndicator(),
//                 );
//               }
//     })
//         ],
//       )
//
//     );
//
//
//
// }
// }


// import 'dart:math';
// import 'package:camera/camera.dart';
// import 'package:chatapp/Screens/CameraView.dart';
// import 'package:chatapp/Screens/VideoView.dart';
// import 'package:flutter/material.dart';
// import 'package:path/path.dart';
// import 'package:path_provider/path_provider.dart';
// List<CameraDescription> cameras;
// class CameraScreen extends StatefulWidget {
//   CameraScreen({Key key}) : super(key: key);
//   @override
//   _CameraScreenState createState() => _CameraScreenState();
// }
// class _CameraScreenState extends State<CameraScreen> {
//   CameraController _cameraController;
//   Future<void> cameraValue;
//   bool isRecoring = false;
//   bool flash = false;
//   bool iscamerafront = true;
//   double transform = 0;
//   @override
//   void initState()
//   { super.initState();
//     _cameraController = CameraController(cameras[0], ResolutionPreset.high);
//     cameraValue = _cameraController.initialize();
//   }
//   @override
//   void dispose() {
//     super.dispose();
//     _cameraController.dispose();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Stack(
//         children: [ FutureBuilder(
//         future: cameraValue,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.done) {
//             return Container(
//                 width: MediaQuery.of(context).size.width,
//                 height: MediaQuery.of(context).size.height,
//                 child: CameraPreview(_cameraController));
//           } else {
//             return Center( child: CircularProgressIndicator(),
//             );
//           }
//
//
//   }),
//     Positioned(
//     bottom: 0.0,
//     child: Container(
//     color: Colors.black,
//     padding: EdgeInsets.only(top: 5, bottom: 5),
//     width: MediaQuery.of(context).size.width,
//     child: Column(
//     children: [
//       Row(
//     mainAxisSize: MainAxisSize.max,
//     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//     children: [
//       IconButton(
//     icon: Icon(
//     flash ? Icons.flash_on : Icons.flash_off,
//     color: Colors.white,
//     size: 28,
//     ),
//     onPressed: () {
//       setState(() { flash = !flash; });
//       flash ? _cameraController
//         .setFlashMode(FlashMode.torch)
//         : _cameraController.setFlashMode(FlashMode.off);
//     }),
//     GestureDetector(
//     onLongPress: () async {
//       await _cameraController.startVideoRecording();
//       setState(() {
//         isRecoring = true;
//       });
//       },
//     onLongPressUp: () async {
//       XFile videopath =
//       await _cameraController.stopVideoRecording();
//       setState(() { isRecoring = false;
//       });
//       Navigator.push(
//     context,
//     MaterialPageRoute(
//     builder: (builder) => VideoViewPage(
//     path: videopath.path,
//     )));
//       },
//     onTap: () {
//       if (!isRecoring) takePhoto(context);
//       },
//       child: isRecoring
//           ? Icon(
//         Icons.radio_button_on,
//         color: Colors.red,
//         size: 80,
//       )
//           : Icon( Icons.panorama_fish_eye,
//         color: Colors.white,
//         size: 70,
//       ),
//     ),
//       IconButton(
//           icon: Transform.rotate(
//             angle: transform,
//             child: Icon(
//               Icons.flip_camera_ios,
//               color: Colors.white,
//               size: 28,
//             ),
//           ),
//           onPressed: () async {
//             setState(() {
//               iscamerafront = !iscamerafront;
//               transform = transform + pi;
//             });
//             int cameraPos = iscamerafront ? 0 : 1;
//             _cameraController = CameraController(
//                 cameras[cameraPos], ResolutionPreset.high);
//             cameraValue = _cameraController.initialize();
//           }),
//     ],
//       ),
//       SizedBox(
//         height: 4,
//       ),
//       Text(
//         "Hold for Video, tap for photo",
//         style: TextStyle(
//           color: Colors.white, ),
//         textAlign: TextAlign.center,
//       )
//     ],
//     ),
//     ),
//     ),
//         ],
//         ),
//     );
//   }
//   void takePhoto(BuildContext context) async {
//     XFile file = await _cameraController.takePicture();
//     Navigator.push(
//         context,
//         MaterialPageRoute(
//             builder: (builder) => CameraViewPage(
//               path: file.path,
//             )));
//   }
// }