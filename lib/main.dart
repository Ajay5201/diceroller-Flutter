import 'package:flutter/material.dart';
import 'dart:math';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var lb=1;
  var rb=2;
  void random()
  {
    setState(() {
      lb=Random().nextInt(6)+1;
      rb=Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.red,

      appBar: AppBar(
        backgroundColor: Colors.teal.shade900,
        title: Center(child: Text("DICE")),
        leading: IconButton(
          icon: Icon(Icons.disc_full),

        ),

      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(

              
                child: FlatButton(child: Image.asset('images/dice$lb.png'),
                onPressed: (){
                  random();

                  print("1st button");
                },
                ),
              ),
            
            Expanded(

                child: FlatButton(child: Image.asset('images/dice$rb.png'),
                onPressed: (){
                  random();
                  print("2n button");
                },),
              ),
            
          ],

        ),
      ),
    );
  }
}
