import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Nature1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title:  Column(children: [
          Row(children: [
            // const Spacer(),


            SizedBox(width: 18.0,),
            Text("Preview")
          ]),

        ]),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Center(
          child: SizedBox(
            height: 300,
            child: Image.asset("assets/images/nat1.jpeg")
          ),
        ),
      ),
    );
  }
}