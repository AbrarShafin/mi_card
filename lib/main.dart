import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          // child: Column(
          //   // mainAxisAlignment: MainAxisAlignment.center,
          //   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   // mainAxisSize: MainAxisSize.min,
          //   // verticalDirection: VerticalDirection.up,
          //   // crossAxisAlignment: CrossAxisAlignment.center, width:200 trying
          //   crossAxisAlignment: CrossAxisAlignment.stretch,
          //   children: [
          //     Container(
          //       height: 100,
          //       // width: 100,
          //       //margin: EdgeInsets.all(20),
          //       //padding: EdgeInsets.all(10),
          //       color: Colors.blue,
          //       child: const Text("container 1!"),
          //     ),
          //     const SizedBox(height: 10.0),
          //     Container(
          //       height: 100,
          //       // width: 100,
          //       color: Colors.red,
          //       child: const Text("container 2"),
          //     ),
          //     Container(
          //       height: 100,
          //       // width: 100,
          //       color: Colors.yellow,
          //       child: const Text("container 3"),
          //     ),
          //     // Container(
          //     //   width: double.infinity,
          //     //   height: 10.0,
          //     // )
          //   ],
          // ),

          // child: Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   // mainAxisSize: MainAxisSize.min,
          //   children: [
          //     Container(
          //       width: 100.0,
          //       color: Colors.red,
          //     ),
          //     // const SizedBox(width: 5),
          //     Column(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         Container(
          //           height: 100.0,
          //           width: 100,
          //           color: Colors.yellow,
          //         ),
          //         Container(
          //           height: 100,
          //           width: 100,
          //           color: Colors.green,
          //         )
          //       ],
          //     ),
          //     Container(
          //       width: 100.0,
          //       color: Colors.blue,
          //     )
          //   ],
          // ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('images/IMG_195811.JPG'),
              ),
              Text(
                'Kazi Abrar Shafin',
                style: TextStyle(
                    fontFamily: 'Playwrite',
                    fontSize: 28.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '           AI Researcher\nMachine Learning Enthusiast',
                style: TextStyle(
                  fontFamily: 'SourceSans',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white54,
                  letterSpacing: 1.5,
                ),
              ),
              Text(
                'EEE, Rajshahi University',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white60,
                ),
              ),
              // Card(
              //   color: Colors.white,
              //   margin: EdgeInsets.symmetric(
              //     vertical: 10.0,
              //     horizontal: 25,
              //   ),
              //   child: Padding(
              //     padding: EdgeInsets.all(7),
              //     child: const Row(
              //       children: [
              //         Icon(
              //           Icons.phone,
              //           size: 40,
              //           color: Colors.teal,
              //         ),
              //         SizedBox(
              //           width: 10,
              //         ),
              //         Text(
              //           "+8801637231961",
              //           style: TextStyle(
              //             color: Colors.teal,
              //             fontWeight: FontWeight.bold,
              //             fontSize: 20,
              //             fontFamily: 'SourceSans',
              //           ),
              //         )
              //       ],
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 15.0,
                width: 150.0,
                child: Divider(
                  color: Colors.white38,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    size: 40,
                    color: Colors.teal,
                  ),
                  title: TextButton(
                    onPressed: () => launch('tel:+8801637231961'),
                    child: Text(
                      "+8801637231961",
                      style: TextStyle(
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'SourceSans',
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 10,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.email_sharp,
                    color: Colors.teal,
                    size: 40,
                  ),
                  title: TextButton(
                    onPressed: () => launch('mailto:kazishafin09@gmail.com'),
                    child: Text(
                      'kazishafin09@gmail.com',
                      style: TextStyle(
                        color: Colors.teal,
                        fontFamily: 'SourceSans',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
