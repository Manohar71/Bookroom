import 'package:bookroom/Auth/login/login_main.dart';
import 'package:bookroom/ui%20widgets/white_box.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class profile_main extends StatefulWidget {
  const profile_main({super.key});

  @override
  State<profile_main> createState() => _profile_mainState();
}

class _profile_mainState extends State<profile_main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.purple,
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 25,
                    )),
              ),
              const SizedBox(
                width: 70,
              ),
              const Center(
                child: Text(
                  'Profile',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15,0,0,0),
                  child: SizedBox(
                      height: 80,
                      width: 100,
                      child: Image.asset(
                        "assets/man.png",
                        fit: BoxFit.cover,
                      )),
                ),
                const Text(
                  'Dr . proffesor',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Flexible(child: white_box(profile_widget(), Colors.white))
        ],
      ),
    );
  }

  Widget profile_widget() {
    return Column(
      children: const [],
    );
  }
}
