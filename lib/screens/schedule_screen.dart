import 'package:flutter/material.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  int _buttonIndex = 0;
  final _scheduleWidgets = [
    //   UpcomingSchedule();
    Container(),
    Container(),
    Container(),
    Container()
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Schedule",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Color(0xfff4f6fa),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){},
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 12,horizontal: 25),
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(10)
                    ),child: Text("Upcoming",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 12,horizontal: 25),
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(10)
                    ),child: Text("Completed",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 12,horizontal: 25),
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(10)
                    ),child: Text("Canceled",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                  ),
                )
              ],),
            )
          ],
        ),
      ),
    );
  }
}
