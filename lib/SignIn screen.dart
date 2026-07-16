import 'package:flutter/material.dart';
import 'package:new_app/Sign%20Up%20screen.dart';
import 'package:new_app/student_profile.dart';

class SignInScreen extends StatefulWidget {

  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                SizedBox(height: 30),

                Row(
                  children: [
                    Icon(Icons.person, color: Colors.white),

                    Text(
                      " LOGO",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),

                Text(
                  "Welcome Back!",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),

                Text(
                  "Sign in to continue your journey with us",
                  style: TextStyle(color: Colors.white38, fontSize: 15),
                ),
              ],
            ),
          ),

          SizedBox(height: 25),

          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),

              child: SingleChildScrollView(
                child: Form(
                  key: _formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Email", style: TextStyle(fontSize: 16)),
                      SizedBox(height: 15,),
                      TextFormField(
                        validator: (value){
                          if(value==null || value.isEmpty){
                            return"please enter your email";
                          }
                        },
                        decoration: InputDecoration(
                          hintText: "Enter your email",
                          // labelText: "Enter your email",
                          prefixIcon: Icon(Icons.email_outlined),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)
                          ),
                        ),
                      ),
                      SizedBox(height: 40,),

                      Text("Password", style: TextStyle(fontSize: 16)),
                      SizedBox(height: 15,),

                      TextFormField(
                        validator: (value){
                          if(value==null || value.isEmpty){
                            return"please enter your email";
                          }
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter your password",
                          // labelText: "Enter your email",
                          prefixIcon: Icon(Icons.lock_open),
                          suffixIcon: Icon(Icons.remove_red_eye_outlined),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)

                          ),
                        ),
                      ),

                      SizedBox(height: 40,),


                      InkWell(
                        onTap: () {
                          if (_formkey.currentState!.validate()) {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) =>
                                    SignupScreen(name: 'zahid',)));
                          }else{
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please fill all textfields")));
                          }
                        },
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.blue.shade900,
                              borderRadius: BorderRadius.circular(50)
                          ),
                          child: Center(child: Text("Sign in",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                        ),
                      ),


                      SizedBox(height: 25,),


                      Row(
                          children:[
                            Expanded(child: Divider()),
                            Text("   Or   ",style: TextStyle(fontSize: 16)),
                            Expanded(child: Divider()),

                          ]
                      ),

                      SizedBox(height: 25,),


                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                                border: Border.all(width: 1,color: Colors.black45),
                                borderRadius: BorderRadius.circular(50)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // CircleAvatar(
                                // radius: 12,
                                //
                                // backgroundImage: AssetImage("assets/images/google icon.png"),),
                                //
                                Image.asset("assets/images/google icon.png",height: 16,),

                                Text("Google",style: TextStyle(fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),

                          Container(
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                                border: Border.all(width: 1,color: Colors.black45),
                                borderRadius: BorderRadius.circular(50)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: [
                                Image.asset("assets/images/fb icon.jpeg",height: 16,),
                                //
                                // CircleAvatar(
                                // radius: 15,
                                //
                                // backgroundImage: AssetImage("assets/images/fb icon.jpeg"),),

                                Text("Facebook",style: TextStyle(fontWeight: FontWeight.bold),),
                              ],

                            ),
                          ),

                        ],
                      ),


                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.center,
                        children: [
                          Text("Don't have an account? "),
                          Text("Sign up", style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),),

                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
