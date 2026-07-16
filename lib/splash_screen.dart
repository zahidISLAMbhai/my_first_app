import 'package:flutter/material.dart';


import 'SignIn screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SplashScreen();
  }

  SplashScreen() async {
    await Future.delayed(Duration(seconds: 3));

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => SignInScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900,

      body: Center(
        child: CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage("asset/images/ITPic.jpg"),
        ),
      ),
    );
  }
}