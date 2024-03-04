import 'package:flutter/material.dart';

class MyPassword extends StatelessWidget {
  const MyPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16.0),
      height: 70,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
              decoration: InputDecoration(
                  hintText:"Password",
                  prefixIcon: Icon(Icons.lock, color: Colors.black38,),
                  suffixIcon: Icon(Icons.visibility_off, color: Colors.black38,),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      gapPadding: 4.0
                  )
              ),
              obscureText: true
          ),
        ],
      ),
    );
  }
}

