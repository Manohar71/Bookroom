import 'package:flutter/material.dart';

class login_butt extends StatefulWidget {
  //const login_butt({super.key});
  late String name;
  login_butt(this.name);

  @override
  State<login_butt> createState() => _login_buttState(name);
}

class _login_buttState extends State<login_butt> {
  late String name;
  _login_buttState(this.name);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 150,
      decoration: BoxDecoration(
          color: Colors.purple,
          borderRadius: BorderRadius.circular(30),
          boxShadow: const [
            BoxShadow(
              color: Color(0xFFBEBEBE),
              offset: Offset(10, 10),
              blurRadius: 30,
              spreadRadius: 1,
            ),
            BoxShadow(
              color: Colors.white,
              offset: Offset(-10, -10),
              blurRadius: 30,
              spreadRadius: 1,
            ),
          ]),
      child:  Center(
        child: Text(
          name,
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
