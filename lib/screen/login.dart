import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project_care/model/profile.dart';
import 'package:project_care/screen/addold.dart';
import 'package:project_care/screen/register.dart';
import 'package:project_care/screen/startprogramui.dart';


class LoginScreen extends StatefulWidget {
  @override


  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  
  final formkey = GlobalKey<FormState>();
  Profile profile = Profile();
   final Future<FirebaseApp> firebase = Firebase.initializeApp();
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
                icon: Icon(Icons.chevron_left,size: 30,color: Color.fromARGB(255, 83, 117,86),), onPressed: ()
                 { Navigator.push(context,MaterialPageRoute
                      (builder: (context){
                        return HomeScreen();
                      })
                      );  },
              ),
                      ),
                    ),
        body: Column(
          children: [ 
            SizedBox(height: 0),
            Container(padding: EdgeInsets.all(20),
            width:500,height: 250,
            decoration: BoxDecoration(
             color: Color.fromRGBO(232, 240, 232,100) ,borderRadius: BorderRadius.circular(0),
             ),
             
             child: Column(children: [
                Container(
             width: 180.0,
             height:180.0,
              child: new Image.asset('images/logonew.png')),
               Padding(padding:EdgeInsets.all(7)) ,
             ],
             ),
            ),
            Align(alignment: Alignment.centerLeft,
            child: Container(margin: EdgeInsets.fromLTRB(0,15, 0, 0),
              child: Text("   E-mail",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 83, 117, 86))),),),
            Container(   //ช่องกรอกอีเมลล์
              margin: EdgeInsets.fromLTRB(20, 8, 15, 10),
              decoration: new BoxDecoration(
                color: Color.fromARGB(255,255,255,255),
              border: Border.all(width: 1.2,color: Color.fromRGBO(212, 214, 212, 100)),
              borderRadius: const BorderRadius.all(const Radius.circular(25)),
              ),
               child: TextFormField(
                           decoration: InputDecoration(border: InputBorder.none) ,
                           onSaved: (String userName){
                             profile.userName = userName;
                           },
                           keyboardType: TextInputType.text,
                         ),
            ),
            Align(alignment: Alignment.centerLeft,
            child: Container(child: Text("   รหัสผ่าน",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 83, 117, 86))),),),
            Container( //ช่องใส่รหัสผ่าน
              margin: EdgeInsets.fromLTRB(20,5, 15, 10),
              decoration: new BoxDecoration(
                color: Color.fromARGB(255,255,255,255),
              border: Border.all(width: 1.2,color: Color.fromRGBO(212, 214, 212, 100)),
              borderRadius: const BorderRadius.all(const Radius.circular(25)),
              ),
               child: TextFormField(decoration: InputDecoration(border: InputBorder.none) ,
                           keyboardType: TextInputType.emailAddress,
                           onSaved: (String email){
                         profile.email = email;
                         },),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30,0, 30, 10),
              child:Row(
                children:<Widget> [
                  FlatButton(textColor: Color.fromARGB(255, 255, 93, 93),onPressed: () { },
                  child: Text("ลืมรหัสผ่าน",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,)),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ),
            Container(  //ปุ่มเข้าสู่ระบบ
             margin: EdgeInsets.fromLTRB(50,15, 30, 10), 
             child: Row(
               children: [
                 SizedBox(     
                   width: 300,height: 60,        
                   child: RaisedButton(onPressed:(){
                     Navigator.push(context, MaterialPageRoute(builder: (context){
                       return AddOldUser();
                     })
                     );
                   },
                   color: Color.fromARGB(255, 144, 198, 149),
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  child: Text("เข้าสู่ระบบ",
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 25,fontWeight: FontWeight.bold,
                  shadows: [Shadow(color: Color.fromRGBO(0, 0, 0, 10),offset: Offset(5,5),blurRadius: 19),]
                  )),
                   ),
                 ),
               ],
               ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(50, 0, 30, 10),
              child:Row(
                children:<Widget> [
                  Text("ยังไม่มีบัญชีใช่ไหม?",style: TextStyle(color: Color.fromARGB(255, 83, 117, 86),fontWeight: FontWeight.bold,
                  fontSize: 18),),
                  FlatButton(textColor: Colors.red[200],onPressed: () {//ปุ่มกดที่นี่เชื่อมไปหน้าสมัครสมาชิก
                    Navigator.push(context,MaterialPageRoute
                    (builder: (context){
                      return RegisterScreen();
                    })
                    );
                     },
                  child: Text("กดที่นี่",style: TextStyle(color: Color.fromARGB(255, 255, 93, 93),fontWeight: FontWeight.bold,fontSize: 18),
                  ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ),
          ],
        ),
        
      );
    }
  }