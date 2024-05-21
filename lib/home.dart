// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var b;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Timer App",style: TextStyle(
          fontSize: 18,
          color: Colors.blue
        ),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("${b}")),
          ElevatedButton(onPressed: (){
            setState(() {
              b = TimeOfDay.now();
            });
          }, child: Text("Click Here"))
        ],
      ),
    );
  }
}