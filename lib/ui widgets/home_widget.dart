import 'package:flutter/material.dart';

class home_widget extends StatefulWidget {
  //const home_widget({super.key});
  late Image img;
  late Text txt;
  home_widget(this.img, this.txt);
  @override
  State<home_widget> createState() => _home_widgetState(img, txt);
}

class _home_widgetState extends State<home_widget> {
  late Image img;
  late Text txt;
  
  _home_widgetState(this.img, this.txt);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 110,
          width: 130,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(116, 196, 196, 196)),
          child: img,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: txt,
        )
      ],
    );
  }
}
