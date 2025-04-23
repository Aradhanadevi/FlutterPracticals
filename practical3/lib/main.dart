import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "practical1",
    // home: Container(
    //   color: Colors.blue,
    // ),
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  // const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is appbar"),
        backgroundColor: Colors.amber,
      ),
      // body: Center(
      //   child: Text("This is container"),
      // )
      body: Container(
        child: Center(
          child: Container(
              
              width: 100,
              height: 100,
              // padding: EdgeInsets.all(20),
              alignment: Alignment.center,
              child: Text("This is text"),
              decoration:BoxDecoration(
                    // borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(colors: [Colors.red, Colors.amber, Colors.cyan] ),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.greenAccent,
                        blurRadius: 15,
                        offset: Offset(10.0, 2.0)
                      )
                    ]
                    )
                    ),
        ),
      ),
    );
  }
}
