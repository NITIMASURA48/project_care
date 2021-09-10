import 'package:flutter/material.dart';
import 'package:project_care/screen/login.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Color.fromARGB(255, 255, 255,255),//พื้นหลัง
     body:Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Container(
           width: 371.0 ,
           height: 318.0,
            child: new Image.asset('images/logonew.png'), //รูปหน้าจอเริ่มต้น
            decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(400),
              boxShadow: [
                BoxShadow(
                 color: Color.fromARGB(255, 151, 167, 195).withOpacity(0.04),
                 blurRadius: 3,
                 offset: Offset(1,10),  )
              ],
            ),
         ),
         Container(       
           margin: EdgeInsets.fromLTRB(50,50, 30, 0), 
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(40),
             boxShadow: [ BoxShadow(
                 color: Color.fromARGB(255, 151, 167, 195).withOpacity(0.1),
                 blurRadius: 1,
                 offset: Offset(1,10),  ),],),
           child: Row(
             children:[
               SizedBox(     
                 width: 300,height: 60,        
                 child: RaisedButton(onPressed:()
                   { Navigator.push(context, MaterialPageRoute(builder: (context){
                     return LoginScreen();
                   })
                   );
                 },
                 child: Text("เริ่มต้นใช้งาน", 
                 style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 255,255, 255),
                 shadows: [Shadow(color: Color.fromRGBO(0, 0, 0, 10),offset: Offset(5,5),blurRadius: 19),]
                 ),
                 ),
                   color: Color.fromARGB(255, 144, 198, 149),
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),
                   side: BorderSide(color: Color.fromARGB(255, 144, 198, 149),),
                   ),
                 )
               )
             ]
         )
         ),

       ]
     ),
    );                 
  }
}