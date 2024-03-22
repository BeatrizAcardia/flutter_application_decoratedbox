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
            icon: Image.asset(
              'assets/images/perm_phone_msg_FILL0_wght400_GRAD0_opsz24.png', // caminho da sua imagem
              width: 30.0, // largura da imagem
              height: 30.0, // altura da imagem
            ),
            onPressed: () {
              // ação a ser executada quando o botão for pressionado
              print('IconButton Pressed');
            },
          ),

          SizedBox(height: 20,),

          IconButton(
            icon: Image.asset(
              'assets/images/o-email.png', // caminho da sua imagem
              width: 30.0, // largura da imagem
              height: 30.0, // altura da imagem
            ),
            onPressed: () {
              // ação a ser executada quando o botão for pressionado
              print('IconButton Pressed');
            },
          ),

          SizedBox(height: 20,),

          IconButton(
            icon: Image.asset(
              'assets/images/bater-papo.png', // caminho da sua imagem
              width: 30.0, // largura da imagem
              height: 30.0, // altura da imagem
            ),
            onPressed: () {
              // ação a ser executada quando o botão for pressionado
              print('IconButton Pressed');
            },
          ),

            ],),

        DecoratedBox(decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          border: Border.all(),
          color: Color.fromARGB(255, 200, 202, 200),),
          child: 
          Padding(
            padding: EdgeInsets.all(40),
            child: Text("Meu nome é Bia e estou entusiasmado por estar aqui com vocês. Tenho uma paixão por PD e valorizo a colaboração e troca de ideias. Trago valores de integridade e respeito. Estou ansioso para contribuir e aprender com todos vocês. Vamos aproveitar ao máximo essa oportunidade de crescimento juntos."),
          ),
          ),
      ],
      ),),
    );
  }
}