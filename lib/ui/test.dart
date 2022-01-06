import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  tapped() {
    debugPrint("hello2");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aniket"),
        centerTitle: true,
        backgroundColor: Colors.black45,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.email), onPressed: () => debugPrint("hello")),
          IconButton(icon: Icon(Icons.access_alarm), onPressed: tapped)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => debugPrint("hello3"),
        backgroundColor: Colors.red,
        child: Icon(Icons.missed_video_call),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), title: Text("MyAccount")),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_call), title: Text("Call")),
        ],
        onTap: (int i) => debugPrint("tapped index: $i"),
      ),
      backgroundColor: Colors.white60,
      body: Container(
        alignment: Alignment.center,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[tappat()]),
      ),
    );
  }
}

class tappat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackBar = SnackBar(
          content: Text("HELLO AGAIN"),
          backgroundColor: Colors.black87,
        );
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text(
          "TAP",
          style: TextStyle(fontSize: 18, color: Colors.white70),
        ),
      ),
    );
  }
}
