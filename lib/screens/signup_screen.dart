import 'package:flutter/material.dart';
import 'package:logsign_section/widget/my_divider.dart';
import 'package:logsign_section/widget/my_email.dart';
import 'package:logsign_section/widget/my_passward.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(16.0),
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome Back!",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35
                  ),
                ),
                Text(
                  "Fill your details or continue \nwith social media",
                  style: TextStyle(
                      color: Colors.black38,
                      fontSize: 16
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 16.0),
                  padding: EdgeInsets.symmetric(vertical: 4.0),
                  height: 70,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText:"Username",
                        prefixIcon: Icon(Icons.person, color: Colors.black38,),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                            gapPadding: 4.0

                        )
                    ),
                  ),
                ),
                MyEmail(),
                MyPassword(),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(onPressed: (){},
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black
                        ),
                      )
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 400,
                  child:  ElevatedButton(onPressed: () {
                    Navigator.pop(context);
                  },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purple.shade400,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)
                          )

                      ),
                      child: Text("SignUp",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        ),
                      )

                  ),

                ),
                MyDivider(),
                Container(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: (){},
                        child: Image.asset(
                          'assets/images/google_icon.png',
                          width: 100,
                          height: 100,

                        ),
                      ),
                      Container(
                        height: 50,
                        child: GestureDetector(
                          onTap: (){},
                          child: Image.asset(
                            'assets/images/facebook_image.png',
                            width: 100,
                            height: 100,

                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?"),
                    Padding(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        child: TextButton(onPressed: (){
                          Navigator.pop(context);
                        },
                          child: Text("LogIn",
                            style: TextStyle(
                                color: Colors.black
                            ),
                          ),
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.symmetric(vertical: 20.0, horizontal: 5.0),
                              )
                          ),
                        )
                    )
                  ],
                )

              ],

            ),

          )
          ,
        )
    );
  }
}



