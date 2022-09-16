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
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height*0.05,),
          Padding(
            padding: const EdgeInsets.fromLTRB(10,0,10,0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.menu , color: Colors.purple, size: 30,)),
                Row(
                  children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.download_done, color: Colors.purple,size: 30,)),
                IconButton(onPressed: (){}, icon: Icon(Icons.search, color: Colors.purple,size: 30,))
                  ],
                ),
              ],
            ),
          ),
          Image.asset("assets/home.png"),
          Expanded(child: white_box(home_child(), Colors.purple))
        ],
      ),
    );
  }
  Widget home_child(){
    return Column(
    children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(0,30,0,0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            home_widget(Image.asset("assets/a_purple.png"), Text("data")),
             home_widget(Image.asset("assets/a_purple.png"), Text("data"))
          ],
        ),
        
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(0,30,0,0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            home_widget(Image.asset("assets/a_purple.png"), Text("data")),
             home_widget(Image.asset("assets/a_purple.png"), Text("data"))
          ],
        ),
        
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(0,30,0,0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            home_widget(Image.asset("assets/a_purple.png"), Text("data")),
             home_widget(Image.asset("assets/a_purple.png"), Text("data"))
          ],
        ),
        
      )
    ],
    );
  }
}