import 'package:bookroom/Auth/passwoed%20reset/main_password.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../Auth/login/login_main.dart';

class sidebarmenu extends StatefulWidget {
  const sidebarmenu({super.key});

  @override
  State<sidebarmenu> createState() => _sidebarmenuState();
}

class _sidebarmenuState extends State<sidebarmenu> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 0.65,
            decoration: const BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: 100,
                  height: 80,
                  child: Image.asset("assets/vect_w.png" , fit: BoxFit.cover,)),
                Text("Bookroom" , style: TextStyle(color: Colors.white , fontSize: 25 , fontWeight: FontWeight.w500),),
                Text("CSE", style: TextStyle(color: Colors.white , fontSize: 25 , fontWeight: FontWeight.w500),),
                 const SizedBox(
                  height: 10,
                ),
                const Divider(
                  color: Colors.white,
                  thickness: 2,
                ),
                 const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Profile ",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  color: Colors.white,
                  thickness: 2,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Settings ",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  color: Colors.white,
                  thickness: 2,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Deadline ",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  color: Colors.white,
                  thickness: 2,
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> password_reset()));
                  },
                  child: const Text(
                    "Reset Password ",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  color: Colors.white,
                  thickness: 2,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "My Stuff ",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  color: Colors.white,
                  thickness: 2,
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                      FirebaseAuth.instance.signOut().then((value) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>loginmain()));
                    });
                  },
                  child: const Text(
                    "Logout ",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  color: Colors.white,
                  thickness: 2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
