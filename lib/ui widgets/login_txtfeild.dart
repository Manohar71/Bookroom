import 'package:flutter/material.dart';

class login_txtfeild extends StatefulWidget {
  // const login_txtfeild({super.key});
  late String hintname;
  late Icon icon_name;
  late TextEditingController control;
  login_txtfeild(this.hintname, this.icon_name , this.control);
  @override
  State<login_txtfeild> createState() => _login_txtfeildState(hintname , icon_name , control);
}

class _login_txtfeildState extends State<login_txtfeild> {
   late String hintname;
  late Icon icon_name;
  late TextEditingController control;
  _login_txtfeildState(this.hintname , this.icon_name , this.control);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width*0.85,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 232, 232, 232),
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [
              BoxShadow(
                color: Color(0xFFBEBEBE),
                offset: Offset(10, 10),
                blurRadius: 30,
                spreadRadius: 1,
              ),
              // BoxShadow(
              //   color: Colors.white,
              //   offset: Offset(-10, -10),
              //   blurRadius: 30,
              //   spreadRadius: 1,
              // ),
            ]),
        child:  Center(
          child: TextField(
            controller: control,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintname,
                hintStyle: TextStyle(fontSize: 20),
                prefixIcon: icon_name,
                iconColor: Colors.black
                ),
          ),
        ),
      ),
    );
  }
}
