import 'package:flutter/material.dart';
import 'package:vibration/vibration.dart';

class neuButton extends StatefulWidget {
  final double height;
  final double width;
  final IconData icon;
  final double iconSize;
  const neuButton(
      {Key? key,
      required this.height,
      required this.width,
      required this.icon,
      required this.iconSize})
      : super(key: key);

  @override
  State<neuButton> createState() => _neuButtonState();
}

class _neuButtonState extends State<neuButton> {
  bool isPressed = false;

  void onpressedup(PointerUpEvent even) {
    setState(() {
      isPressed = false;
    });
  }

  void onpressedDown(PointerDownEvent event) {
    setState(() {
      isPressed = true;
    });
    Vibration.vibrate(amplitude: 64, duration: 100);
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: onpressedDown,
      onPointerUp: onpressedup,
      child: isPressed
          ? Container(
              // padding: EdgeInsets.all(5.0),
              child: Container(
                height: widget.height,
                width: widget.width,
                // padding: EdgeInsets.all(15.0),
                child: Icon(
                  widget.icon,
                  size: widget.iconSize,
                  color: Colors.grey[700],
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(4.0, 4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    ),
                    BoxShadow(
                      color: Color(0xFF757575), //grey[600]
                      offset: Offset(-4.0, -4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    )
                  ],
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF616161), //grey[700]
                        Color(0xFF757575), //grey[600]
                        Color(0xFF9E9E9E), //grey[500]
                        Color(0xFFEEEEEE), //grey[200]
                      ],
                      stops: [
                        0,
                        0.1,
                        0.3,
                        1,
                      ]),
                ),
              ),
            )
          : Container(
              height: widget.height,
              width: widget.width,
              // padding: EdgeInsets.all(20.0),
              child: Icon(
                widget.icon,
                size: widget.iconSize,
                color: Colors.grey[800],
              ),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF757575), //grey[600]
                    offset: Offset(4.0, 4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0,
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-4.0, -4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0,
                  )
                ],
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFFEEEEEE), //grey[200]
                      Color(0xFFE0E0E0), //grey[300]
                      Color(0xFFBDBDBD), //grey[400]
                      Color(0xFF9E9E9E), //grey[500]
                    ],
                    stops: [
                      0.1,
                      0.3,
                      0.8,
                      1,
                    ]),
              ),
            ),
    );
  }
}

class circleDesign extends StatefulWidget {
  final double radius;
  final Widget child;
  const circleDesign({Key? key, required this.radius, required this.child})
      : super(key: key);

  @override
  circleDesignState createState() => circleDesignState();
  // GlobalKey<_circleDesignState> _myKey = GlobalKey();
}

class circleDesignState extends State<circleDesign> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.radius,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.grey[300],
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Color(0xFF757575), //grey[600]
              offset: Offset(4.0, 4.0),
              blurRadius: 15.0,
              spreadRadius: 1.0,
            ),
            BoxShadow(
              color: Colors.white,
              offset: Offset(-4.0, -4.0),
              blurRadius: 15.0,
              spreadRadius: 1.0,
            )
          ],
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFEEEEEE), //grey[200]
                Color(0xFFE0E0E0), //grey[300]
                Color(0xFFBDBDBD), //grey[400]
                Color(0xFF9E9E9E), //grey[500]
              ],
              stops: [
                0.1,
                0.3,
                0.8,
                1,
              ])),
      child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[300],
            ),
            child: Padding(
              padding: EdgeInsets.all(5.0),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[300],
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(4.0, 4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    ),
                    BoxShadow(
                      color: Color(0xFF757575), //grey[600]
                      offset: Offset(-4.0, -4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    )
                  ],
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF616161), //grey[700]
                        Color(0xFF757575), //grey[600]
                        Color(0xFF9E9E9E), //grey[500]
                        Color(0xFFEEEEEE), //grey[200]
                      ],
                      stops: [
                        0,
                        0.1,
                        0.3,
                        1,
                      ]),
                ),
                child: widget.child,
              ),
            ),
          )),
    );
  }
}

// Center(
//                   child: Text(
//                     '$counter',
//                     style: TextStyle(
//                       fontSize: 100.0,
//                       color: Colors.grey[800],
//                     ),
//                   ),
//                 ),