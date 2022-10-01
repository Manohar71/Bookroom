// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

class fireread extends StatefulWidget {
  const fireread({super.key});

  @override
  State<fireread> createState() => _firereadState();
}

class _firereadState extends State<fireread> {
  Query dbrefer = FirebaseDatabase.instance.ref().child('mainbook');
  Widget ListItem({required Map mainbook}) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Container(
        color: Colors.red,
        height: 200,
        width: 200,
        child: Column(
          children: [
            Text(mainbook['Author']),
            Text(mainbook['book name']),
            SizedBox(height: 100, width: 200,
            child: Image.network(mainbook['img'].toString() , fit: BoxFit.fill,),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        child: FirebaseAnimatedList(
            query: dbrefer,
            itemBuilder: (BuildContext context, DataSnapshot snapshot,
                Animation<double> animation, int index) {
              Map mainbook = snapshot.value as Map;
              mainbook['key'] = snapshot.key;

              return ListItem(mainbook: mainbook);
            }),
      ),
    );
  }
}
