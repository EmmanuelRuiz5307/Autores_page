import 'dart:html';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //***Aqui van las variables a utilizar***
    final currentWith = MediaQuery.of(context).size.width;
   List nombres = [
    'Dr. Juan Carlos Pérez',
    'Dr. Laura Correa',
    'Dr. Massimo Di Martino',
    'Dr. Roberto Salazar',
    'Dr. Liria Cabos',
  ];
 List avatares = [
    'perro',
    '32',
    '17',
    '8',
    '45',
  ];


    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 60,
            ) ,
             Text(
              'Lista Autores' , 
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30 , 
                fontWeight: FontWeight.bold , 
                color: Colors.black),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column( //***Inicio de la Columna-1***
                    children: [
                      GestureDetector(
                        child: CircleAvatar(
                          radius: 80,
                          backgroundImage: AssetImage(
                            'images/perro.jpg'),
                          //aqui iria la ruta de la imagen
                        ),
                      ),
                       //Inicio separador No1
                      SizedBox(
                        height: 10,
                      ), //Fin separador No1
                      Text( //Pie de la foto
                        nombres[0],
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),//***Fin de pie de la foto***
                    ],
                  ), //Fin de la Columna-1
                   //Inicio separador No2
                    SizedBox(
                        width: 50,
                      ),//Fin separador No2
                      Column( //***Inicio de la Columna-2***
                        children: [
                          GestureDetector(
                        child: CircleAvatar(
                          radius: 80,
                          //aqui iria la ruta de la imagen
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        nombres[1] , 
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal
                        ),
                        ),
                        ],
                      ),//Fin de la Columna-2
                       
                       //Inicio separador No 3
                 SizedBox(
                  width: 40,
                ),//Fin separador No 3
                Column( //***Inicio de la Columna-3***
                  children: [
                  GestureDetector(
                    child: CircleAvatar(
                      radius: 80,
                      //ruta de la imagen
                    ),
                  ),
                   SizedBox(
                        height: 10,
                      ),
                      Text(
                        nombres[2] ,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                ],
                ) , //Fin de la Columna-3

                  //Inicio separador No4
                 SizedBox(
                  width: 40,
                ), //Fin separador No4
                Column( //***Inicio de la Columna-4***
                  children: [
                  GestureDetector(
                    child: CircleAvatar(
                      radius: 80,
                      //ruta de la imagen
                    ),
                  ),
                   SizedBox(
                        height: 10,
                      ),
                      Text(
                        nombres[3] ,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                ],
                ), //Fin de la Columna-4

                SizedBox(
                  width: 40,
                ),
                 Column( //***Inicio de la Columna-5***
                  children: [
                  GestureDetector(
                    child: CircleAvatar(
                      radius: 80,
                      //ruta de la imagen
                    ),
                  ),
                   SizedBox(
                        height: 10,
                      ),
                      Text(
                        nombres[4] ,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                ],
                ), //Fin de la Columna-5
                ],
              )
          ],
        ),
      ),
    );
  }
}