import 'package:bookroom/ui%20widgets/white_box.dart';
import 'package:flutter/material.dart';

class catogeries extends StatefulWidget {
  //const catogeries({super.key});
  late Image logo;
  late Widget Child_w;
  catogeries(this.Child_w, this.logo);

  @override
  State<catogeries> createState() => _catogeriesState(Child_w, logo);
}

class _catogeriesState extends State<catogeries> {
  late Image logo;
  late Widget Child_w;

  _catogeriesState(this.Child_w, this.logo);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 30, 30.0),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.purple,
                  size: 30,
                )),
          ),
          Center(child: logo),
          Expanded(child: white_box(Child_w, Colors.purple))
        ],
      ),
    );
  }
}
