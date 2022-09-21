import 'package:bookroom/Catogeries/cat_data.dart';
import 'package:bookroom/book%20reading/book_read.dart';
import 'package:bookroom/ui%20widgets/neobox.dart';
import 'package:bookroom/ui%20widgets/white_box.dart';
import 'package:flutter/material.dart';

class main_download extends StatefulWidget {
  const main_download({super.key});

  @override
  State<main_download> createState() => _main_downloadState();
}

class _main_downloadState extends State<main_download> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30,),
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back , color: Colors.white, size: 25,)),
          Image.asset("assets/Downloads.png"),
          Expanded(child: white_box(down_widget(context), Colors.white))
        ],
      ),
    );
  }
  Widget down_widget(context) => ListView.builder(
      itemCount: cat_data.length,
      itemBuilder: ((context, index) => Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(child: neobox(pysicai_wid(context))))),
    );
  }

  Widget pysicai_wid(context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (contex) => book_read()));
      },
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Image.asset("assets/elon.png"),
            Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 0, 0, 0),
              child: Column(
                children: const [
                  Text(
                    "ELON MUSK ",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text("Ashlee Vance",
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                  Text("Year : 2015",
                      style: TextStyle(color: Colors.white, fontSize: 18))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

