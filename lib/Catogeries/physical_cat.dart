import 'package:bookroom/Catogeries/cat_data.dart';
import 'package:bookroom/book%20reading/book_read.dart';
import 'package:bookroom/ui%20widgets/catgories.dart';
import 'package:bookroom/ui%20widgets/neobox.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

class physical_cat extends StatefulWidget {
  const physical_cat({super.key});

  @override
  State<physical_cat> createState() => _physical_catState();
}

class _physical_catState extends State<physical_cat> {
  Query dbrefer = FirebaseDatabase.instance.ref().child('mainbook');
  @override
  Widget build(BuildContext context) {
    return Center(
        child:
            catogeries(Phywidget(context), Image.asset("assets/physical.png")));
  }

  Widget Phywidget(context) {
    return Center(
      // child: ListView.builder(
      //   shrinkWrap: true,
      //   itemCount: cat_data.length,
      //   itemBuilder: ((context, index) => Padding(
      //       padding: const EdgeInsets.all(10.0),
      //       child: Align(
      //         child: neobox(pysicai_wid()),
      //       ))),
      // ),
      child: Container(
        height: double.infinity,
        child: FirebaseAnimatedList(
            query: dbrefer,
            itemBuilder: (BuildContext context, DataSnapshot snapshot,
                Animation<double> animation, int index) {
              Map mainbook = snapshot.value as Map;
              mainbook['key'] = snapshot.key;

              return Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 20, 20, 10),
                child: neobox(pysicai_wid(mainbook: mainbook)),
              );
            }),
      ),
    );
  }

  Widget pysicai_wid({required Map mainbook}) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (contex) => book_read()));
      },
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            SizedBox(
                height: 100,
                width: 100,
                child: Image.network(
                  mainbook['img'].toString(),
                  fit: BoxFit.cover,
                )),
            Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 0, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mainbook['book name'],
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 3, 0, 3),
                    child: Text(mainbook['Author'],
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                  ),
                  Text(mainbook['year'].toString(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w300))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
