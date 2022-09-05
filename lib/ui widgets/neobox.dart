import 'package:flutter/material.dart';

class neobox extends StatefulWidget {
  const neobox({super.key});

  @override
  State<neobox> createState() => _neoboxState();
}

class _neoboxState extends State<neobox> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 120,
        width: MediaQuery.of(context).size.width*0.85,
        decoration: BoxDecoration(
          color: Color.fromARGB(133, 196, 196, 196),
        // color: Colors.amber,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
             BoxShadow(
                  color: Color.fromARGB(64, 0, 0, 0),
                  offset: Offset(0, 20),
                  blurRadius: 40,
                  spreadRadius: 0,
                ),
          ]
        ),
      ),
    );
  }
}