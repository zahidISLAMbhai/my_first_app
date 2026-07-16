import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class StudentProfile extends StatelessWidget {

  const StudentProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("student Profile", style: TextStyle(color: Colors.white)),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.notifications, color: Colors.blue),
            ),
          ],
          // leading: Icon(Icons.menu, color: Colors.blue),
          backgroundColor: Colors.green,
        ),
      
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              CircleAvatar(
      radius: 40,
                backgroundImage: AssetImage("assets/images/ITPic.jpg"),
              ),
              Text("Zahid Islam", style: TextStyle(color: Colors.black)),
              Text("flutter developer", style: TextStyle(color: Colors.black)),
      
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("120\nProjects"),
                  Text("850\nFollowers"),
                  Text("230\nFollowing"),
                ],
              ),
      
              SizedBox(height: 20),
      
              Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
      
                    children: [
                      Icon(Icons.person),
                      SizedBox(width: 8),
      
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("About Me"),
      
                          SizedBox(height: 6),
                          Text(
                            "I am a passionate flutter developer.\n i love a building beautiful and\nfunctional mobile apps. ",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 5),
              Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Column(
                    spacing: 2,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.call, size: 15),
                          Text("Contact Information"),
                        ],
                      ),
      
                      Divider(),
                      Row(
                        children: [
                          Icon(Icons.email, size: 15),
                          Text(
                            "  Contact Information",
                            style: TextStyle(fontSize: 10),
                          ),
                          Spacer(),
                          Text(
                            "  ali.khan@example.com",
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                      Divider(),
                      Row(
                        children: [
                          Icon(Icons.call, size: 15),
                          Text(
                            "Contact Information",
                            style: TextStyle(fontSize: 10),
                          ),
                          Spacer(),
                          Text("+92 331 4566791", style: TextStyle(fontSize: 10)),
                        ],
                      ),
                      Divider(),
                      Row(
                        children: [
                          Icon(Icons.location_on, size: 15),
                          Text(
                            "Contact Information",
                            style: TextStyle(fontSize: 10),
                          ),
                          Spacer(),
                          Text(
                            " lahore , pakistan",
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
      
                    ],
      
                  ),
                ),
              ),
      
              Container(
                height: 70,
                padding: EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(20),
      
              ),
                child: Row(
                    spacing: 5,
                    children: [
      
                Container(
                    decoration:BoxDecoration(
                        color: Colors.purple.shade50,
                        borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 2),
                      child: Text("flutter"),
                    )),
                      Container(
                    decoration:BoxDecoration(
                        color: Colors.purple.shade50,
                        borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 2),
                      child: Text("Skills"),
                    )),
                      Container(
                    decoration:BoxDecoration(
                        color: Colors.purple.shade50,
                        borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 2),
                      child: Text("advanced"),
                    )),
                      Container(
                          decoration:BoxDecoration(
                              color: Colors.purple.shade50,
                              borderRadius: BorderRadius.circular(25)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 2),
                            child: Text(" level"),
                          )),
      
      
      
        ]),
              )],
      
          ),
        ),
      ),
    );
  }
}
