import 'package:flutter/material.dart';
import '../models/chat_models.dart';

class ChatScreen extends StatefulWidget{
  @override
  ChatScreenState createState() {
    // TODO: implement createState
      return ChatScreenState();
}
}
class ChatScreenState extends State<ChatScreen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, i)=> Column(
        children: <Widget>[
         const Divider(
            height: 10.0,
          ),
          ListTile(
            leading: CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(dummyData[i].avatar_url),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(dummyData[i].name, style: const TextStyle(color: Colors.grey, fontSize: 14.0),),
                
              ],
            ),
            subtitle: Container(
              padding: EdgeInsets.only(top: 5.0),
              child: Text(dummyData[i].message, style: const TextStyle(color: Colors.grey, fontSize: 15.0),),
              
            ),
          )
       ],
      ),
    );
  }
}