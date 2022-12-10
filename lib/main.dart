import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: const MagicBall(),)
  );
}
class MagicBall extends StatefulWidget {
  const MagicBall({Key? key}) : super(key: key);

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int num=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: PreferredSize(preferredSize:Size.fromHeight(70),
      child: AppBar(
        title: Text('Magic Ball',
          style: TextStyle(
              fontFamily: 'GloriaHallelujah',
              fontWeight: FontWeight.bold,fontSize: 30,color: Colors.yellow),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      ),
      body: Center(
        child: InkWell(
          onTap: (){
            setState(() {
             num =  Random().nextInt(4)+1;
            });
          },
          // child: Container(
          //   height: 300,
          //   width: 300,
          //   decoration: BoxDecoration(
          //       image: DecorationImage(
          //           image: AssetImage('Images/ball$num.png'),
          //       ),
          //   ),
          // ),
          child: CircleAvatar(
            radius: 150,backgroundImage: AssetImage('Images/ball$num.png'),
          ),
        ),
      ),
    );
  }
}


