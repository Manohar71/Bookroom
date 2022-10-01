import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class fire_exam extends StatefulWidget {
  const fire_exam({super.key});

  @override
  State<fire_exam> createState() => _fire_examState();
}

class _fire_examState extends State<fire_exam> {
  final database = FirebaseDatabase.instance.ref();
  @override
  Widget build(BuildContext context) {
    final mainbook = database.child('/mainbook');
    return Container(
      height: 100,
      width: 200,
      color: Colors.amber,
      child: ElevatedButton(
        
        onPressed: () async{
          await mainbook.push().set({
      'book name'  : 'harrypoter' , 'Author' : 'jenny'
    });
        },
        child: Text('firebase')),
    );
  }
}
