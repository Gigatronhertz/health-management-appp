import 'package:flutter/material.dart';
import 'package:hospital_app/widgets/chat_sample.dart';

import 'chat_screen.dart';

class MassageScreen extends StatelessWidget {
  List Docnames = ["Teniola", "Esther", "Dumdum", "Okey"];

  List imgs = [
    "doctor1.jpg",
    "doctor2.jpg",
    "doctor2.jpg",
    "doctor2.jpg",
    "doctor2.jpg",
    "doctor3.jpg",
    "doctor4.jpg",
    "doctor2.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Messages",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Container(
              padding: EdgeInsets.symmetric(),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10, spreadRadius: 2, color: Colors.black12)
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 300,
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "search",
                            border: InputBorder.none,
                          ),
                        )),
                  ),
                  Icon(
                    Icons.search,
                    color: Color(0xff7165d6),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
            
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal:10),
          child: Text("Active Now",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
          SizedBox(
            height: 90,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 12),
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 2,
                          blurRadius: 10,
                        )
                      ]),
                  child: Stack(
                    textDirection: TextDirection.rtl,
                    children: [
                      Center(
                        child: Container(
                          height: 65,
                          width: 65,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                              "images/${imgs[index]}",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(5),
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                            color: Colors.green, shape: BoxShape.circle),
                      )
                    ],
                  ),
                );
              },
              scrollDirection: Axis.horizontal,
              itemCount: imgs.length,
              shrinkWrap: true,
            ),
          ),
          ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 4,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  minVerticalPadding: 20,
                  onTap: () { Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChatScreen()));},
                  leading: CircleAvatar(
                      backgroundImage: AssetImage("images/${imgs[index]}"),
                      radius: 30),
                      title: Text("Dr ${Docnames[index]}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      subtitle: Text("hello richie whats up when we  ......",style: TextStyle(fontSize:15,fontWeight: FontWeight.w500),) ,
                      trailing: Text("21:23"),
                );
                
              }),
               ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 4,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  minVerticalPadding: 20,
                  onTap: () {},
                  leading: CircleAvatar(
                      backgroundImage: AssetImage("images/${imgs[index]}"),
                      radius: 30),
                      title: Text("Dr ${Docnames[index]}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      subtitle: Text("hello richie whats up when we  ......",style: TextStyle(fontSize:15,fontWeight: FontWeight.w500),) ,
                      trailing: Text("21:23"),
                );
                
              })
        ],
      ),
    );
  }
}
