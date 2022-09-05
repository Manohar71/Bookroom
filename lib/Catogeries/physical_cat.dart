import 'package:bookroom/Catogeries/cat_data.dart';
import 'package:bookroom/ui%20widgets/catgories.dart';
import 'package:bookroom/ui%20widgets/neobox.dart';
import 'package:flutter/material.dart';

class physical_cat extends StatefulWidget {
  const physical_cat({super.key});

  @override
  State<physical_cat> createState() => _physical_catState();
}

class _physical_catState extends State<physical_cat> {
  @override
  Widget build(BuildContext context) {
    return catogeries(Phywidget(), Image.asset("assets/physical.png"));
  }

  Widget Phywidget() {
    return ListView.builder(
      itemCount: cat_data.length,
      itemBuilder: ((context, index) => Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [Center(child: neobox())],
          ))),
    );
  }

  Widget pysicai_wid() {
    return Container();
  }
}
