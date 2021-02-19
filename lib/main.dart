import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/women.jpg'),
            ),
            Text('Angela Yu',
            style: TextStyle(
              fontFamily: 'Pacifico',
              fontSize: 40.0,
              color: Colors.white,
              fontWeight: FontWeight.bold),
            ),
            Text('FLUTTER DEVELOPER',
              style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  color: Colors.teal.shade100,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
            child: Divider(
              color: Colors.teal.shade100,
            ),),
            Card(
              // color: Colors.teal,
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                    Icons.phone,
                    color: Colors.teal),
                title: Text(
                  '+94 765 785 434',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Source Sans Pro',
                      color: Colors.teal.shade900
                  ),
                ),

              )
            ),
            Card(
              // color: Colors.teal,
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                    Icons.email,
                    color: Colors.teal),
                title: Text(
                  'angela@gmail.com',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Source Sans Pro',
                      color: Colors.teal.shade900
                  ),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}


