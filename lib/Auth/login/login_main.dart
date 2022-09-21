import 'package:bookroom/Auth/passwoed%20reset/main_password.dart';
import 'package:bookroom/Auth/sinup/main_sinup.dart';
import 'package:bookroom/Catogeries/physical_cat.dart';
import 'package:bookroom/home/main_home.dart';
import 'package:bookroom/profile/profile_main.dart';
import 'package:bookroom/ui%20widgets/login_butt.dart';
import 'package:bookroom/ui%20widgets/login_txtfeild.dart';
import 'package:bookroom/ui%20widgets/white_box.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class loginmain extends StatefulWidget {
  const loginmain({super.key});

  @override
  State<loginmain> createState() => _loginmainState();
}

class _loginmainState extends State<loginmain> {
  final tab4 = TextEditingController();
  final tab5 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.purple,
      body: Column(
        children: [
          const SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
            child: Center(child: Image.asset("assets/logo_b.png")),
          ),
          Flexible(child: white_box(child_widget(context), Colors.white))
        ],
      ),
    );
  }

  Widget child_widget(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(child: Image.asset("assets/Vector.png")),
        ),
        login_txtfeild("E-mail", Icon(Icons.account_circle), tab4),
        SizedBox(
          height: 20,
        ),
        login_txtfeild("Enter Password", Icon(Icons.account_circle), tab5),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => password_reset()));
              },
              child: const Text(
                "forgot password ?",
                style: TextStyle(color: Colors.purple),
              )),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Center(
              child: InkWell(
                  onTap: () {
                    FirebaseAuth.instance
                        .signInWithEmailAndPassword(
                            email: tab4.text, password: tab5.text)
                        .then((value) {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => main_home()));
                    });
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context) => physical_cat()));
                  },
                  child: login_butt("login"))),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset("assets/g_purple.png"),
              Image.asset("assets/f_purple.png"),
              Image.asset("assets/a_purple.png"),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.all(20.0),
          child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => sinup_main()));
              },
              child: Center(
                child: const Text(
                  "Need an account? Sign up",
                  style: TextStyle(color: Colors.purple),
                ),
              )),
        ),
      ],
    );
  }
}
