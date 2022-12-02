import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _counter = 0;

  void plus() => {
        setState(() {
          _counter++;
        })
      };

  void minus() => {
        setState(() {
          if (_counter > 0) _counter--;
        })
      };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          title: Text(
            "Counter",
            style: TextStyle(color: Color.fromARGB(255, 228, 66, 54)),
          ),
          backgroundColor: Colors.white),
      backgroundColor: Color.fromARGB(255, 228, 66, 54),
      body: Center(
        child: Container(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: minus,
                  icon: Icon(Icons.remove_circle, color: Colors.white)),
              Container(
                  margin: EdgeInsets.all(15),
                  child: Text("Your Number Now is $_counter",
                      style: TextStyle(color: Colors.white, fontSize: 25))),
              IconButton(
                  onPressed: plus,
                  icon: Icon(Icons.add_circle, color: Colors.white)),
            ],
          ),
        ),
      ),
    ));
  }
}
