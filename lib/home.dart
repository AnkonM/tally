import 'package:flutter/material.dart';

import 'package:tally/buttons.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter = 0;

  void incrementCount(PointerDownEvent event) {
    setState(() {
      counter++;
    });
    // print(counter);
  }

  void decrementCount(PointerDownEvent event) {
    if (counter > 0) {
      setState(() {
        counter--;
      });
      // print(counter);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  final snackBar = SnackBar(
    backgroundColor: Colors.grey[200],
    content: Text(
      'Tallies need not be negative now do they?',
      style: TextStyle(
        fontFamily: "forma",
        fontSize: 13.6,
        fontWeight: FontWeight.w600,
        letterSpacing: 1.1,
      ),
    ),
    action: SnackBarAction(
      label: 'OK',
      onPressed: () {
        // Some code to undo the change.
      },
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        elevation: 0.0,
        title: Center(
          child: Text(
            "Tally",
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.grey[900],
              fontFamily: "forma",
              fontWeight: FontWeight.w900,
              letterSpacing: 1.2,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 30),
                child: circleDesign(
                  radius: 225,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(5.0, 20.0, 0.0, 0.0),
                      child: Text(
                        "$counter",
                        style: TextStyle(
                          fontSize: 100.0,
                          color: Colors.grey[800],
                          fontFamily: "forma",
                          // fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 75.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Listener(
                    onPointerDown: decrementCount,
                    child: neuButton(
                      height: 70.0,
                      width: 70.0,
                      icon: Icons.remove,
                      iconSize: 35.5,
                    ),
                  ),
                  SizedBox(
                    width: 88.0,
                  ),
                  Listener(
                    onPointerDown: incrementCount,
                    child: neuButton(
                      height: 70.0,
                      width: 70.0,
                      icon: Icons.add,
                      iconSize: 35.5,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
