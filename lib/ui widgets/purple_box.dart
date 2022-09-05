import 'package:flutter/material.dart';

class purple_box extends StatefulWidget {
  //const purple_box({super.key});
  late Widget child;
  purple_box(this.child);

  @override
  State<purple_box> createState() => _purple_boxState(child);
}

class _purple_boxState extends State<purple_box> {
  late Widget child;
  _purple_boxState(this.child);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.75,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          color: Colors.purple,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50.0),
            bottomRight: Radius.circular(50.0),
          )),
      child: child,
    );
  }

 
}
