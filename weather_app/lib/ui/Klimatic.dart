import 'package:flutter/material.dart';
import '../util/utils.dart';

class Klimatic extends StatefulWidget {
  @override
  _KlimaticState createState() => _KlimaticState();
}

class _KlimaticState extends State<Klimatic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Klimatic"),
        centerTitle: true,
        backgroundColor: Colors.red,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.menu), onPressed: () => print("Hello")),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Center(
            child: Image.asset(
              'images/rain.jpg',
              height: 1440.0,
              width: 490.0,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            alignment: Alignment.topRight,
            margin: EdgeInsets.fromLTRB(0.0, 15.0, 20.0, 0.0),
            child: Text(
              "California",
              style: cityStyle(),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Image.asset('images/light_rain.png'),
          ),
          Container(

            margin: const EdgeInsets.fromLTRB(30.0, 360.0, 0.0, 0.0),
            child: Text(
              '67.85',
              style: tempStyle(),

            ),
          ),
        ],
      ),
    );
  }
}

TextStyle cityStyle() {
  return TextStyle(
    color: Colors.white,
    fontSize: 26.0,
    fontStyle: FontStyle.italic,
  );
}

TextStyle tempStyle() {
 return TextStyle(
    color: Colors.white,
    fontStyle: FontStyle.normal,
    fontSize: 49.9,
    fontWeight: FontWeight.w500,
  );
}
