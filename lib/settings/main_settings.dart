import 'package:bookroom/ui%20widgets/white_box.dart';
import 'package:flutter/material.dart';

class main_setting extends StatefulWidget {
  const main_setting({super.key});

  @override
  State<main_setting> createState() => _main_settingState();
}

class _main_settingState extends State<main_setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).viewPadding.top,
          ),
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
          Center(child: Image.asset("assets/settings.png")),
          Expanded(child: white_box(Settings_child(), Colors.white))
        ],
      ),
    );
  }

  Widget Settings_child() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 20, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Account Settings",
              style: TextStyle(
                  color: Colors.purple,
                  fontSize: 25,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('Brightness',
                style: TextStyle(
                    color: Colors.purple,
                    fontSize: 25,
                    fontWeight: FontWeight.w600)),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Fontsize",
              style: TextStyle(
                  color: Colors.purple,
                  fontSize: 25,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Dark theme",
              style: TextStyle(
                  color: Colors.purple,
                  fontSize: 25,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Eye comfort",
                style: TextStyle(
                    color: Colors.purple,
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
              ))
        ],
      ),
    );
  }
}
