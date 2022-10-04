//code test 2

import 'package:flutter/material.dart';
import 'package:lab11_tutorial1/services/word_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LoadingState();
}
class _LoadingState extends State<Loading> {
  // String? time = 'LOADING..........';
  void setWorldTime() async {
    WordTime timeinstance =
    WordTime(location: 'kolkata', flag: 'india.png', url: 'Asia/Kolkata');
    await timeinstance.getTime();
    Navigator.pushNamed(context, '/home',arguments: {
      'location':timeinstance.location,
      'flag':timeinstance.flag,
      'time':timeinstance.time,
    });
// print(timeinstance.time);
//     setState(() {
//       time = timeinstance.time;
//     });
//   }
  }
  @override
  void initState() {
    super.initState();
    setWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        // appBar: AppBar(
        //   title: Text("LOADING SCREEN"),
        // ),
        body: Center(
          child : SpinKitFadingCube (
          color: Colors.white,
          size: 90.0,
        ),
        )
    );
  }
}
