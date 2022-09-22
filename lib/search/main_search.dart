import 'package:bookroom/ui%20widgets/login_txtfeild.dart';
import 'package:bookroom/ui%20widgets/white_box.dart';
import 'package:flutter/material.dart';

class main_search extends StatefulWidget {
  const main_search({super.key});

  @override
  State<main_search> createState() => _main_searchState();
}

class _main_searchState extends State<main_search> {
  final search_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        const SizedBox(
          height: 50,
        ),
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.purple,
              size: 25,
            )),
        Center(child: Image.asset("assets/Search.png")),
        Padding(
          padding: const EdgeInsets.fromLTRB(0,0,0,10),
          child: login_txtfeild("#Bookroom", Icon(Icons.search_rounded), search_controller),
        ),
        Expanded(child: white_box(search_child(), Colors.purple))
      ]),
    );
  }

  Widget search_child() {
    return Column();
  }
}
