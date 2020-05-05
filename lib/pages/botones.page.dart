
import 'dart:math';

import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: <Widget>[
          _fondoApp(),

          SingleChildScrollView(
            //controller: controller,
            child: Column(
              children: <Widget>[
                _titulos(),

              ],
            ),
          ),
        ],
      ),

      bottomNavigationBar: _botonNavigationBar(context),
/*       bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[

        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today),
          title: Container(),
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.pie_chart_outlined),
          title: Container(),

        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle),
          title: Container(),

        )

        ]), */
    );
  }

  Widget _fondoApp(){
    
  final gradiente = Container(
    width: double.infinity,
    height: double.infinity,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: FractionalOffset(0.0, 0.6) ,
        end:  FractionalOffset(0.0, 1.0  ),
        colors: [
          Color.fromRGBO(52, 54, 101, 1.0),
          Color.fromRGBO(35, 37, 57, 1.0),
        ])
    ),
  );

  final cajaRosada= Transform.rotate(
    angle: -pi/5.0,
    child:Container(
        height: 330.0,
        width: 330.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80.0),
          gradient: LinearGradient(
            colors:[
               Color.fromRGBO(236, 98, 188, 1.0),
               Color.fromRGBO(241, 142, 172, 1.0),

            ]
          )
        ),

      )
    
    );
  
  
  Container(
    height: 360.0,
    width: 360.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(80.0),
      color: Colors.pink
    ),

  );

  return Stack(
    children: <Widget>[
      gradiente,
      Positioned(
        child: cajaRosada,
        top: -100.0,
      ),

    ],
  );
  }

  Widget _titulos(){

    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Classify transaction',style: TextStyle(color: Colors.white,fontSize:30.0 ,fontWeight: FontWeight.bold ),),
            SizedBox(height: 10.0,),
            Text('Classify this transaction into a particular category',style: TextStyle(color: Colors.white,fontSize:18.0 )),

          ],
        ),
      ),
    );
  }

  Widget _botonNavigationBar(BuildContext context){

    return Theme(
      data: Theme.of(context).copyWith(
      canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
      primaryColor: Colors.pinkAccent,
      textTheme: Theme.of(context).textTheme
      .copyWith(caption:TextStyle(color: Color.fromRGBO(116, 117 , 152, 1.0)

      ))
      ), 
      child: BottomNavigationBar(
        items:[
           BottomNavigationBarItem(
             icon: Icon(Icons.calendar_today,size: 30.0,),
             title: Container(),
            // backgroundColor: Colors.pink,
           ),

           BottomNavigationBarItem(
             icon: Icon(Icons.bubble_chart,size: 30.0,),
             title: Container()
           ),

           BottomNavigationBarItem(
             icon: Icon(Icons.supervised_user_circle,size: 30.0,),
             title: Container()
           )
        ]
        )
      
      
    );
  }
}