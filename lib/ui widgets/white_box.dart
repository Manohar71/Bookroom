import 'package:flutter/material.dart';

class white_box extends StatefulWidget {
  // const white_box({super.key});
  late Widget child;
  late Color color;
  white_box(this.child , this.color);
  @override
  State<white_box> createState() => _white_boxState(child , color);
}

class _white_boxState extends State<white_box> {
  late Widget child;
  late Color color;
  _white_boxState(this.child, this.color);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration:  BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.0),
            topRight: Radius.circular(50.0),
          )),
      child: child,
    );
  }
}
