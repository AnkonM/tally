import 'package:flutter/material.dart';

class Design extends StatefulWidget {
  final Color color;
  final double blurLevel;
  final Offset offsetWhite;
  final Offset offsetBlack;
  final double height;
  final double width;
  final IconData icon;
  final double iconSize;
  const Design({Key? key, required this.color, required this.blurLevel, required this.offsetWhite, required this.offsetBlack, required this.height, required this.width, required this.icon, required this.iconSize}) : super(key: key);

  @override
  State<Design> createState() => _DesignState();
}



class _DesignState extends State<Design> {
  bool isPressed = false;

  void onpressedup(PointerUpEvent event) {
    setState(() {
      isPressed = false;
    });
  }

  void onpressedDown(PointerDownEvent event) {
    setState(() {
      isPressed = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: onpressedDown,
      onPointerUp: onpressedup,
      child: isPressed? Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          boxShadow: [
            BoxShadow(
              blurRadius: widget.blurLevel,
              offset: Offset(-3,-3),
              color: Colors.white.withOpacity(.7),
            ),
            BoxShadow(
              blurRadius: widget.blurLevel,
              offset: Offset(3,3),
              color: Colors.white.withOpacity(.15),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Container(
            decoration: BoxDecoration(
              color: widget.color,
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                decoration: BoxDecoration(
                  color: widget.color,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: widget.blurLevel,
                      offset: widget.offsetWhite,
                      color: Colors.white.withOpacity(.7)
                    ),
                    BoxShadow(
                        blurRadius: widget.blurLevel,
                        offset: widget.offsetBlack,
                        color: Colors.white.withOpacity(.25)
                    ),
                  ]
                ),
                child: Icon(widget.icon,
                  size: widget.iconSize,
                  color: Colors.blue[300],
                ),
              ),
            ),
          ),
        ),
      ):
      Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          color: Color(0xFFe6ebf2),
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          boxShadow: [
            BoxShadow(
              blurRadius: widget.blurLevel,
              offset: Offset(-3,-3),
              color: Colors.white.withOpacity(0.7)
            ),
            BoxShadow(
                blurRadius: widget.blurLevel,
                offset: Offset(3,3),
                color: Colors.white.withOpacity(0.15)
            ),
          ]
        ),
        child: Icon(
          widget.icon,
          color: Colors.black.withOpacity(0.5),
          size: 30.0,
        ),
      )
    );
  }
}
