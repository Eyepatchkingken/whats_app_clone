import 'dart:io';

import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class CameraScreen extends StatefulWidget{
  
  
  CameraScreen({this.camera});
  CameraDescription camera;
 
  @override 
  CameraScreenState createState() {
    // TODO: implement createState
    return CameraScreenState();
  }
}

class CameraScreenState extends State <CameraScreen>{
  CameraController controller;
  Future<void> _initializeControllerFuture;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = 
        CameraController(widget.camera, ResolutionPreset.medium);
    controller.initialize().then((_){
      if (!mounted){
        return;
      }
      setState(() {
        
      });
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if(!controller.value.isInitialized){
      return Scaffold(
       /*  appBar: AppBar(
          title: Text("Take a Picture"),
        ), */
        body: Container()
          /* FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
          // If the Future is complete, display the preview.
          return CameraPreview(controller);
          } else {
          // Otherwise, display a loading indicator.
          return const Center(child: CircularProgressIndicator());
          }
        },
        ),
       floatingActionButton: FloatingActionButton(
  // Provide an onPressed callback.
  onPressed: () async {
    // Take the Picture in a try / catch block. If anything goes wrong,
    // catch the error.
    try {
      // Ensure that the camera is initialized.
      await _initializeControllerFuture;

      // Attempt to take a picture and then get the location
      // where the image file is saved.
      final image = await controller.takePicture();
    } catch (e) {
      // If an error occurs, log the error to the console.
      print(e);
    }
  },
  child: const Icon(Icons.camera_alt),
),  */
 
);
    }
    // TODO: implement build
    return AspectRatio(aspectRatio: controller.value.aspectRatio,
    child: CameraPreview(controller),
    );
  }
}

/* class DisplayPictureScreen extends StatelessWidget {
  final String imagePath;

  const DisplayPictureScreen({key,  this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Display the Picture')),
      // The image is stored as a file on the device. Use the `Image.file`
      // constructor with the given path to display the image.
      body: Image.file(File(imagePath)),
    );
  }
}
 */