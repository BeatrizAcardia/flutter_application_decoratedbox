// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class MyCats extends StatelessWidget {
  const MyCats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(children: [
        Padding(padding: EdgeInsets.all(50)),
        Text("Meus gatinhos"),
      ],)),
    );
  }
}