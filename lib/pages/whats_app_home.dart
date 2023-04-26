import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'call_screen.dart';
import 'camera_screen.dart';
import 'chat_screen.dart';
import 'status_screen.dart';

class WhatsAppHome extends StatefulWidget{
  final CameraDescription cameras;
  WhatsAppHome({this.cameras});

  @override
  _WhatAppHomeState createState() => _WhatAppHomeState();
}

class _WhatAppHomeState extends State<WhatsAppHome>
  with SingleTickerProviderStateMixin{
    TabController _tabController;
    bool showFab = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tabController = TabController(length: 4, vsync: this, initialIndex: 1); //the tab bar view starts on the Chats tab
    _tabController.addListener(() {
      if (_tabController.index == 1){ //if the tab bar view is on the chats tab, show the floating button
        showFab = true;
      } else{
        showFab = false;
      }
      setState(() {
        
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold( 
      appBar: AppBar(
        title: Text("WhatsApp"),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white, //sets the tab bar indicator to white
          tabs: [
            Tab(icon: Icon(Icons.camera_alt),), //tab bar view index 0
            Tab(text: "CHATS",),
            Tab(text: "STATUS",),
            Tab(text: "CALLS",),
       ],
        ),
        actions: [ //actions are the icons within the appbar
          Icon(Icons.search),
          Padding(padding: EdgeInsets.all(20.0)),
          Icon(Icons.more_vert)
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [ CameraScreen(),
        ChatScreen(),
        StatusScreen(),
        CallsScreen(),
      ]),
      floatingActionButton: showFab?
      FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: ()=> print("Open chats"))
      :null,
    );
  }

}