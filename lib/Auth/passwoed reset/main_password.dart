import 'package:bookroom/Auth/login/login_main.dart';
import 'package:bookroom/ui%20widgets/login_butt.dart';
import 'package:bookroom/ui%20widgets/login_txtfeild.dart';
import 'package:bookroom/ui%20widgets/purple_box.dart';
import 'package:flutter/material.dart';

class password_reset extends StatefulWidget {
  const password_reset({super.key});

  @override
  State<password_reset> createState() => _password_resetState();
}

class _password_resetState extends State<password_reset> {
  final tab1 = TextEditingController();
  final tab2 = TextEditingController();
  final tab3 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          purple_box(passres_child()),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 70, 0, 0),
            child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: login_butt("Reset")),
          )
        ],
      ),
    );
  }

  Widget passres_child() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 50, 0, 0),
          child: Row(
            children: [
              InkWell(
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (context) => const loginmain()));
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 40,
                  )),
            ],
          ),
        ),
        Image.asset("assets/password.png"),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: const Text(
            "Password",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        login_txtfeild("Enter Mail", Icon(Icons.account_circle), tab1),
        SizedBox(
          height: 30,
        ),
        login_txtfeild("Enter password", Icon(Icons.account_circle), tab2),
        SizedBox(
          height: 30,
        ),
        login_txtfeild("Re-Enter password", Icon(Icons.account_circle), tab3),
      ],
    );
  }
}
