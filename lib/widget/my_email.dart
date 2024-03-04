import 'package:flutter/material.dart';

class MyEmail extends StatelessWidget {
  const MyEmail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16.0),
      padding: EdgeInsets.symmetric(vertical: 4.0),
      height: 70,
      child: TextField(
        decoration: InputDecoration(
            hintText:"Email Adress",
            prefixIcon: Icon(Icons.mail, color: Colors.black38,),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                gapPadding: 4.0
            )
        ),
      ),
    );
  }
}
