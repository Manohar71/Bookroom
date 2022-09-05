import 'package:bookroom/Auth/login/login_main.dart';
import 'package:bookroom/ui%20widgets/login_butt.dart';
import 'package:bookroom/ui%20widgets/login_txtfeild.dart';
import 'package:bookroom/ui%20widgets/purple_box.dart';
import 'package:flutter/material.dart';

class sinup_main extends StatefulWidget {
  const sinup_main({super.key});

  @override
  State<sinup_main> createState() => _sinup_mainState();
}

class _sinup_mainState extends State<sinup_main> {
  final tab5 = TextEditingController();
  final tab6 = TextEditingController();
  final tab7 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          purple_box(purple_child()),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 70, 0, 0),
            child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: login_butt("sign Up")),
          )
        ],
      ),
    );
  }

  Widget purple_child() => Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 50, 30, 30),
            child: Row(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const loginmain()));
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 40,
                    )),
                const SizedBox(
                  width: 50,
                ),
                const Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("assets/g_white.png"),
                Image.asset("assets/f_white.png"),
                Image.asset("assets/a_white.png"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: login_txtfeild(
                "Enter E-mail", Icon(Icons.account_circle), tab5),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: login_txtfeild(
                "Enter Password", Icon(Icons.account_circle), tab6),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: login_txtfeild(
                "Re-Enter Password", Icon(Icons.account_circle), tab7),
          ),
        ],
      );
}
