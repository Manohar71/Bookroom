import 'package:bookroom/Catogeries/physical_cat.dart';
import 'package:bookroom/downloads/main_download.dart';
import 'package:bookroom/home/sidebar_menu.dart';
import 'package:bookroom/ui%20widgets/home_widget.dart';
import 'package:bookroom/ui%20widgets/white_box.dart';
import 'package:flutter/material.dart';

class main_home extends StatefulWidget {
  const main_home({super.key});

  @override
  State<main_home> createState() => _main_homeState();
}

class _main_homeState extends State<main_home> {
  @override
  bool iscollapsed = true;
  Duration duration = const Duration(milliseconds: 300);
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        sidebarmenu(),
        AnimatedPositioned(
          duration: duration,
          top: iscollapsed ? 0 : 0.2 * MediaQuery.of(context).size.height,
          bottom: iscollapsed ? 0 : 0.2 * MediaQuery.of(context).size.width,
          left: iscollapsed ? 0 : 0.7 * MediaQuery.of(context).size.width,
          right: iscollapsed ? 0 : -0.6 * MediaQuery.of(context).size.width,
          child: Material(
            elevation: 8,
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              iscollapsed = !iscollapsed;
                            });
                          },
                          icon: Icon(
                            Icons.menu,
                            color: Colors.purple,
                            size: 30,
                          )),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => main_download()));
                              },
                              icon: Icon(
                                Icons.download_done,
                                color: Colors.purple,
                                size: 30,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.search,
                                color: Colors.purple,
                                size: 30,
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
                Image.asset("assets/home.png"),
                Expanded(child: white_box(home_child(), Colors.purple))
              ],
            ),
          ),
        ),
      ]),
    );
  }

  Widget home_child() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: (() {
                      Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => physical_cat()));
                  }),
                  child: home_widget(
                      Image.asset("assets/h_1.png"),
                      Text(
                        "Physical",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      )),
                ),
                home_widget(
                    Image.asset("assets/e_books.png"),
                    Text("e-books",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500)))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                home_widget(
                    Image.asset("assets/h_2.png"),
                    Text("My Books",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500))),
                home_widget(
                    Image.asset("assets/audio.png"),
                    Text("Audio Books",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500)))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                home_widget(
                    Image.asset("assets/a_purple.png"),
                    Text("Issued Books",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500))),
                home_widget(
                    Image.asset("assets/a_purple.png"),
                    Text("Returend Books",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500)))
              ],
            ),
          )
        ],
      ),
    );
  }
}
