import 'package:flutter/material.dart';
import 'package:project_care/screen/login.dart';
import 'package:project_care/screen/olddata.dart';

class AddOldUser extends StatefulWidget {
  
  @override
  _AddOldUserState createState() => _AddOldUserState();
}

class _AddOldUserState extends State<AddOldUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
       appBar: PreferredSize(
            preferredSize: Size.fromHeight(55), //ขนาดappbar
            child: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Color.fromARGB(255, 250, 254, 250),
              leading: IconButton(
              icon: Icon(Icons.close,size: 30,color: Color.fromARGB(255, 25, 53, 102),), onPressed: ()
               { Navigator.push(context,MaterialPageRoute
                    (builder: (context){
                      return LoginScreen();
                    })
                    );  },
            ),
            title: Center(child: Text('ข้อมูลผู้สูงอายุ',style: TextStyle(color: Color.fromARGB(255, 83, 117, 86),fontWeight: FontWeight.bold,fontSize: 24,
             shadows: [Shadow(color: Color.fromRGBO(0, 0, 0,180),offset: Offset(0,2),blurRadius: 25),]), 
           ), ),
           actions:<Widget> [
             IconButton(icon: Icon(Icons.add,size: 30,color: Color.fromARGB(255, 83, 117, 86),),onPressed: (){
               Navigator.push(context,MaterialPageRoute
                    (builder: (context){
                      return OldForm();
                    })
                    );
             },)
             
           ],
            )
       )
    );
  }
}