import 'package:flutter/material.dart';

class whatsApp_profile extends StatelessWidget {
  const whatsApp_profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Profile",
            style: TextStyle(color: Colors.blue),
          ),
        ),
        body: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("assets/images/profile.jpg"),
                ),
                SizedBox(height: 10),
                Text(
                  "edits",
                  style: TextStyle(fontSize: 25),
                ),

                SizedBox(height: 20),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.person),
                        Text("Name")
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(Icons.call),
                    Text("About")
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(Icons.verified_user),
                    Text("Username")
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(Icons.call),
                    Text("phone")
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(Icons.link),
                    Text("Links")
                  ],
                ),
              ],

            ),
          ),
        ),
      ),
    );
  }
}