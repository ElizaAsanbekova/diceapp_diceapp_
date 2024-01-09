import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(DiceApp());
}

int san_1 = 1;
int san_2 = 200;

class DiceApp extends StatelessWidget {
  DiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int on = 1;
int rom = 2;
int tom = 1;
int son = 1;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Tapshyrma 5"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 30,
            width: 60,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  on = Random().nextInt(20) + 1;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue),
                child: Center(
                    child: Text(
                  "$on",
                  style: TextStyle(fontSize: 25, height: 0.75),
                )),
              ),
            ),
          ),
          SizedBox(
            height: 30,
            width: 60,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  rom = Random().nextInt(20) + 1;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
                child: Center(
                  child: Text(
                    "$rom",
                    style: TextStyle(fontSize: 35, height: 0.75),
                  ),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 50,
                width: 100,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      tom = Random().nextInt(100) + 3;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green),
                    child: Center(
                        child: Text(
                      "book$son",
                      style: TextStyle(fontSize: 20, height: 0.75),
                    )),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
                width: 100,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      son = Random().nextInt(100) + 1;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green,
                    ),
                    child: Center(
                      child: Text(
                        "laptop$tom",
                        style: TextStyle(fontSize: 20, height: 0.75),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
