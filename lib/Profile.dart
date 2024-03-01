// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {

final fotoDePerfil = SizedBox(
  height: 200,
  width: 200,
  child: Image.asset("assets/images/biabonita"),
);

final fontes = Text(
"Beatriz Aparecida Cardia", 
 style: TextStyle(   
   fontSize: 20,    
   fontWeight: FontWeight.bold,
   fontFamily: 'Montserrat',          
   ),
);

  MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        centerTitle: true,
        title: Text("Sobre mim", style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),),
        backgroundColor: Color.fromARGB(255, 165, 49, 41),
      ),
      backgroundColor: Color.fromARGB(255, 219, 211, 211),
      body: Center(child: Column(children: [
        CircleAvatar( 
        radius: 120.0,
        backgroundColor: Colors.red,
        backgroundImage: AssetImage('assets/images/biabonita.jpg'),
        ),
        
        fontes,

        SizedBox(height: 10,),

        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
            icon: Image.asset('assets/images/call.png',
            width: 30.0,
            height: 30.0,
            ),
            onPressed: () {
              print('Favorite IconButton Pressed');
              },
            ),
            ],),

        DecoratedBox(decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          border: Border.all(),
          color: Color.fromARGB(255, 191, 197, 191),),
          child: 
          Padding(
            padding: EdgeInsets.all(40),
            child: Text("Meus gatinhos"),
          ),
          ),

           
      ],
      ),),
    );
  }
}