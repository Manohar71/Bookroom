import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class book_read extends StatefulWidget {
  const book_read({super.key});

  @override
  State<book_read> createState() => _book_readState();
}

class _book_readState extends State<book_read> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(children: [
            SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Image.asset("assets/book1.png")),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 20,
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          icon: const Icon(Icons.arrow_back),
                          color: Colors.purple,
                          onPressed: () {},
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: const Color.fromARGB(124, 0, 0, 0),
                        radius: 20,
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          icon: const Icon(Icons.share),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.32,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 20,
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          icon: const Icon(Icons.heart_broken),
                          color: Colors.purple,
                          onPressed: () {},
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 20,
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          icon: const Icon(Icons.add),
                          color: Colors.purple,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ]),
          const Padding(
            padding: EdgeInsets.fromLTRB(20.0, 20, 0, 0),
            child: Text(
              "PROGERESS",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 20, 0, 0),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircularPercentIndicator(
                  radius: 50.0,
                  lineWidth: 5.0,
                  percent: 0.26,
                  center: const Text(
                    "26%",
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  progressColor: Colors.blue,
                  backgroundColor: Colors.white,
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: const [
                    Text(
                      "82pgs",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "Completed",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w200),
                    ),
                  ],
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(20.0, 20, 0, 0),
            child: Text(
              "REVIEWS",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(20.0, 10, 10, 10),
            child: Text(
              "Reviews will be here..",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w200),
            ),
          ),
        ],
      ),
    );
  }
}
