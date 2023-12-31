import "package:flutter/material.dart";

class Settings_Screen extends StatelessWidget {
  const Settings_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Settings",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                )),
            SizedBox(
              height: 30,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("images/doctor1.jpg"),
              ),
              title: Text(
                "Richmond",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                ),
              ),
              subtitle: Text("Profile"),
            ),
            Divider(
              height: 50,
            ),
            ListTile(
              onTap: () {},
              leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.person, color: Colors.blue, size: 35)
                  ),
                  title: Text("Profile", style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            SizedBox(height: 15,),
            ListTile(
              onTap: () {},
              leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple.shade100,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.notifications_none_outlined, color: Color.fromARGB(255, 88, 70, 250), size: 35)
                  ),
                  title: Text("Notifications", style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            SizedBox(height: 15,),
            ListTile(
              onTap: () {},
              leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 150, 170, 248),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.privacy_tip_outlined, color: Color.fromARGB(255, 88, 70, 250), size: 35)
                  ),
                  title: Text("Privacy", style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            SizedBox(height: 15,),
            ListTile(
              onTap: () {},
              leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 204, 237, 213),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.settings_suggest_outlined, color: Color.fromARGB(255, 69, 174, 27), size: 35)
                  ),
                  title: Text("General", style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            SizedBox(height: 15,),
            ListTile(
              onTap: () {},
              leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 197, 116),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.info_outline, color: Color.fromARGB(255, 255, 139, 44), size: 35)
                  ),
                  title: Text("About Us", style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            Divider(height: 75,),
            SizedBox(height: 30,),
             ListTile(
              onTap: () {},
              leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 249, 124, 122),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.logout_outlined, color: Color.fromARGB(255, 255, 69, 44), size: 35)
                  ),
                  title: Text("Log Out", style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
