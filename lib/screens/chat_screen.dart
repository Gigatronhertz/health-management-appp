import 'package:flutter/material.dart';

import '../widgets/chat_sample.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
      return Scaffold(
        
        appBar: PreferredSize(
            child: AppBar(
              backgroundColor: Color(0xff7165d6),
              leadingWidth: 30,
              title: Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("images/doctor1.jpg"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Dr. Teniola",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
              actions: [
                Padding(
                  padding: EdgeInsets.only(top: 8, right: 20),
                  child: Icon(Icons.call),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8, right: 20),
                  child: Icon(Icons.video_call),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8, right: 20),
                  child: Icon(Icons.more_vert),
                )
              ],
            ),
            preferredSize: Size.fromHeight(70)),
        body: ListView.builder(
          padding: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 8),
          itemBuilder: (context, index) => ChatSample(),
        ),
        bottomSheet: Container(
          height: 65,
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(spreadRadius: 3, blurRadius: 2, color: Colors.black12)
          ]),
          child: Row(children: [
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Icon(
                Icons.add,
                size: 20,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Icon(
                Icons.emoji_emotions_outlined,
                color: Colors.amber,
                size: 20,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 10,
              ),
              child: Container(
                width: 270,
                child: TextFormField(
                  decoration:
                      InputDecoration(hintText: "Type Something", border: InputBorder.none),
                ),
              ),
            )
          ]),
        ),
      );
  
  }
}
