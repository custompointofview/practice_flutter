import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        backgroundColor: Colors.amber,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.red,
                backgroundImage: NetworkImage(
                    'https://news.artnet.com/app/news-upload/2020/04/04162020_ArtAngle_NewsFeaturedImage-01-256x256.png',
                    scale: 1.0),
              ),
              Text(
                'Kosmo Poc',
                style: TextStyle(
                  fontFamily: 'Pattaya',
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'WANNABE POLYMATH',
                style: TextStyle(
                  color: Colors.black26,
                  fontSize: 20,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Colors.black,
                ),
              ),
              Card(
                color: Colors.black,
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 25,
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        '+44 1234 5678',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.black,
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 25,
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.email,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        'c.g.p@gmail.com',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.black,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.facebook,
                    color: Colors.white,
                  ),
                  title: Text(
                    '/custompointofview',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
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
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//       ),
//       home: Scaffold(
//         backgroundColor: Colors.amber,
//         body: SafeArea(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//               Container(
//                 height: 100.0,
//                 padding: EdgeInsets.all(20.0),
//                 color: Colors.white,
//                 child: Text('C1'),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Container(
//                 height: 100.0,
//                 width: 100.0,
//                 margin: EdgeInsets.symmetric(
//                   vertical: 0.0,
//                   horizontal: 10.0,
//                 ),
//                 padding: EdgeInsets.all(20.0),
//                 color: Colors.blue,
//                 child: Text('C2'),
//               ),
//               Container(
//                 height: 100.0,
//                 width: 100.0,
//                 margin: EdgeInsets.symmetric(
//                   vertical: 0.0,
//                   horizontal: 10.0,
//                 ),
//                 padding: EdgeInsets.all(20.0),
//                 color: Colors.red,
//                 child: Text('C3'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
