import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:camera/camera.dart';

import 'package:flutter/foundation.dart';

void main(List<String> args) {
  runApp( const CameraScreenB());
}

class CameraScreenB extends StatefulWidget {
  const CameraScreenB({super.key});

  @override
  State<CameraScreenB> createState() => _CameraScreenBState();
}

class _CameraScreenBState extends State<CameraScreenB> {
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

  Future<void> openFrontCamera() async {
  // Get a list of available cameras.
  final cameras = await availableCameras();

  // Find the front camera.
  final frontCamera = cameras.firstWhere(
    (camera) => camera.lensDirection == CameraLensDirection.front,
  );

  // Initialize the CameraController with the front camera.
  final cameraController = CameraController(
    frontCamera,
    ResolutionPreset.high,
  );

  // Initialize the controller.
  await cameraController.initialize();

  // You can use this controller to display the camera preview.
  // Here is an example of how to use it in a StatefulWidget.
  //runApp(CameraApp(cameraController));
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: Stack(
        children: [
          Container(
            color: Colors.white,
            child: Image.asset(
              "image_app/image2.png",
              height: 800,
              fit: BoxFit.fill,
            ),
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
                        IconButton(onPressed: (){
                          pickImage(ImageSource.camera);
                        },
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
                    onPressed: () {openFrontCamera();},
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


