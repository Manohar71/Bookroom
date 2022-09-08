import 'package:flutter/material.dart';

class neobox extends StatefulWidget {
  //const neobox({super.key});
  late Widget neo_child;
  neobox(this.neo_child);

  @override
  State<neobox> createState() => _neoboxState(neo_child);
}

class _neoboxState extends State<neobox> {
  late Widget neo_child;
  _neoboxState(this.neo_child);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 120,
        width: MediaQuery.of(context).size.width * 0.85,
        decoration: BoxDecoration(
            color: const Color.fromARGB(133, 196, 196, 196),
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(64, 0, 0, 0),
                offset: Offset(0, 20),
                blurRadius: 40,
                spreadRadius: 0,
              ),
            ]),
            child: neo_child,
      ),
    );
  }
}
