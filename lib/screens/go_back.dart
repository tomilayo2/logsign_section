import 'package:flutter/material.dart';

class GoBack extends StatelessWidget {
  const GoBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WTF Class Of 2024",
        style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold
        ),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "WELCOME ONBOARD",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30
            ),),
            ElevatedButton(onPressed: (){
             // Navigator.pushNamed(context, '/Homepage()');
              Navigator.pop(context);
            },
                child: Text("Go Back"),
            )
          ],
        ),
      )
    );
  }
}
