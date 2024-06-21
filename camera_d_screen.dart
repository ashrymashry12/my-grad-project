import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
//import 'package:camera/camera.dart';
//import 'package:video_player/video_player.dart';
void main(List<String> args) {
  runApp( const CameraScreenD());
}

class CameraScreenD extends StatefulWidget {
  const CameraScreenD({super.key});
 
  @override
  State<CameraScreenD> createState() => _CameraScreenDState();
}

class _CameraScreenDState extends State<CameraScreenD> {
   File? images;

  Future<void> pickImage( ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source:source);
      if(image == null) return;
      setState(() {
        images = File(image.path);
      });
    } catch (e) {
      if(kDebugMode){
        print(e);
      }
      }}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,

      //appBar: AppBar(
      //backgroundColor: Colors.transparent,
      //elevation: 90.0,
      //actions: [
      //Container(
      //margin: EdgeInsets.only(right: 20),
      //height: 45,
      //width: 45,
      //decoration: BoxDecoration(
      // color: Colors.white,
      //borderRadius: BorderRadius.circular(100)),
      //child: IconButton(
      //onPressed: () {},
      //     icon: Icon(Icons.electric_bolt_outlined,
      //       size: 30, color: Colors.teal))),
      //     Container(
      //     width: 220,
      // ),
      // Container(
      //   margin: EdgeInsets.only(right: 30),
      // height: 45,
      //width: 45,
      //decoration: BoxDecoration(
      //  color: Colors.white,
      //borderRadius: BorderRadius.circular(100)),
      // child: IconButton(
      //   onPressed: () {},
      // icon: Icon(
      // Icons.list,
      //                 size: 30,
      //               color: Colors.teal,
      //           ))),
      //],
      //  ),
      body: Stack(
        children: [
          Container(
            color: Colors.white,
            child: Image.asset(
              "image_app/image2.png",
              height: 800,
              fit: BoxFit.fill,
            )
          ),
          Container(
            height: 120,
            width: 1000,
            color: Colors.grey.withOpacity(0.5),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20, top: 15),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100)),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.electric_bolt,
                        size: 30,
                        color: Colors.teal[300],
                      )),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 250, top: 15),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100)),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.list,
                        size: 30,
                        color: Colors.teal[300],
                      )),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.grey.withOpacity(0.5),
            height: 210,
            width: 1000,
            margin: const EdgeInsets.only(top: 580),
            child: Row(
              children: [
                
                   Container(
                    margin: const EdgeInsets.only(left: 155),
                    height: 95,
                    width: 95,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100)),
                  
                  
                    child: Row(
                  
                       children: [
                        IconButton(
                          onPressed: (){ pickImage(ImageSource.camera);},
                         icon: Icon(Icons.circle,
                         size: 94,
                         color: Colors.teal[300],
                         
                         ),
                         padding: const EdgeInsets.all(0.1),
                         ),
                    ],
                  ),
                  ),
                
                Container(
                  margin: const EdgeInsets.only(left: 70),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100)),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.cameraswitch_outlined),
                    iconSize: 30,
                    color: Colors.teal[300],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}