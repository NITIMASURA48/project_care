
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project_care/model/profile.dart';
import 'package:project_care/screen/login.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}


class _RegisterScreenState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();
  Profile profile = Profile();
 final Future<FirebaseApp> firebase = Firebase.initializeApp();

  @override
   Widget build(BuildContext context) {
    return FutureBuilder(future: firebase,
    builder: (context,snapshot){
      if(snapshot.hasError){
       return Scaffold(appBar: AppBar(
         title: Text('Error'),
        ),
        body:Center(
          child: Text("${snapshot.error}"),
        ),
       );
      }
      if(snapshot.connectionState == ConnectionState.done){
        return Scaffold(
     resizeToAvoidBottomInset: false,
        backgroundColor: Color.fromARGB(255, 250, 254, 250),
         appBar: PreferredSize(
           preferredSize: Size.fromHeight(55), //ขนาดappbar
           child: AppBar(
             automaticallyImplyLeading: false,
            backgroundColor: Color.fromARGB(255, 232, 240, 232),
             leading: IconButton(
               icon: Icon(Icons.chevron_left,size: 30,color: Color.fromARGB(255, 25, 53, 102),), onPressed: ()
                { Navigator.push(context,MaterialPageRoute
                    (builder: (context){
                       return LoginScreen();
                     })
                     );  },
            ),
                     ),
                  ),
                  body: Column(
                     children: [
           SizedBox(height: 10),
           Container(padding: EdgeInsets.all(20),margin: EdgeInsets.fromLTRB(60, 0, 2,10),
           width:290,height: 67,
           decoration: BoxDecoration(
            color: Color.fromARGB(255, 162, 205, 166) ,borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 202, 202, 202).withOpacity(0.3),
               offset: Offset(0.0,4.0),blurRadius: 4.0 ,)
            ]),
            child: Column(children: [
              Text('สร้างบัญชีผู้ใช้งาน',style: TextStyle(fontSize:20,color: Color.fromARGB(255, 255, 255, 255),fontWeight: FontWeight.bold,
             shadows: [Shadow(color: Color.fromRGBO(0, 0, 0, 100),offset: Offset(0,2),blurRadius: 16),])
              ),
           ],
            ),
           ),
           Column(children: [
               Container(
                         child: Form(
                           key: formKey,
                         child: SingleChildScrollView(
                            child: Column(
                               children: [
                                Align(alignment: Alignment.centerLeft,child: Container(child:
                       Text("    ชื่อผู้ใช้งาน",style: TextStyle(fontSize:16,color: Color.fromARGB(255, 83, 117, 86),fontWeight: FontWeight.bold)))),
                        Container(   //ช่องกรอกชื่อผู้ใช้
                         margin: EdgeInsets.fromLTRB(30, 10, 30, 5),
                        decoration: new BoxDecoration(
                           color: Color.fromARGB(255,255 ,255 ,255 ),
                        border: Border.all(width: 1,color: Color.fromARGB(255, 212, 214, 212)),
                         borderRadius: const BorderRadius.all(const Radius.circular(30)),
                         ),
                         child: TextFormField(
                           decoration: InputDecoration(border: InputBorder.none) ,
                           onSaved: (String userName){
                             profile.userName = userName;
                           },
                           keyboardType: TextInputType.text,
                         ),
                        ),
                        Align(alignment: Alignment.centerLeft,child: Container(child:
                       Text("    E-mail",style: TextStyle(fontSize:16,color: Color.fromARGB(255, 83, 117, 86),fontWeight: FontWeight.bold)
                       ))),
                        Container(   //ช่องกรอกอีเมลล์
                         margin: EdgeInsets.fromLTRB(30, 10, 30, 5),
                         decoration: new BoxDecoration(
                           color: Color.fromARGB(255,255 ,255 ,255 ),
                         border: Border.all(width: 1,color: Color.fromARGB(255, 212, 214, 212)),
                         borderRadius: const BorderRadius.all(const Radius.circular(30)),
                        ),
                         child: TextFormField(decoration: InputDecoration(border: InputBorder.none) ,
                           keyboardType: TextInputType.emailAddress,
                           onSaved: (String email){
                         profile.email = email;
                         },),
                        ),
                        Align(alignment: Alignment.centerLeft,child: Container(child:
                       Text("    รหัสผ่าน",style: TextStyle(fontSize:16,color: Color.fromARGB(255, 83, 117, 86),fontWeight: FontWeight.bold)))),
                        Container(   //ช่องกรอกรหัสผ่าน
                      margin: EdgeInsets.fromLTRB(30, 10, 30, 5),
                       decoration: new BoxDecoration(
                           color: Color.fromARGB(255,255 ,255 ,255 ),
                         border: Border.all(width: 1,color: Color.fromARGB(255, 212, 214, 212)),
                         borderRadius: const BorderRadius.all(const Radius.circular(30)),
                         ),
                       child: TextFormField(decoration: InputDecoration(border: InputBorder.none) ,
                         keyboardType: TextInputType.text,
                         onSaved: (String password){
                         profile.password = password;
                       },),
                        ),
                        Align(alignment: Alignment.centerLeft,child: Container(child:
                       Text("    เบอร์โทรศัพท์",style: TextStyle(fontSize:16,color: Color.fromARGB(255, 83, 117, 86),fontWeight: FontWeight.bold)))),
                         Container(   //ช่องกรอกเบอร์โทร
                         margin: EdgeInsets.fromLTRB(30, 10, 30, 5),
                         decoration: new BoxDecoration(
                           color: Color.fromARGB(255,255 ,255 ,255 ),
                         border: Border.all(width: 1,color: Color.fromARGB(255, 212, 214, 212)),
                         borderRadius: const BorderRadius.all(const Radius.circular(30)),
                         ),
                         child:TextFormField(decoration: InputDecoration(border: InputBorder.none) ,
                        keyboardType: TextInputType.text,
                         onSaved: (String mobilePhone){
                          profile.mobilePhone = mobilePhone;
                         },
                         ),
                        ),
                               ],
                             ),
                           ),
                       ),
                       ),

            ],),
           Container(  //ปุ่มเข้าสู่ระบบ
                        margin: EdgeInsets.fromLTRB(50,15, 30, 10),
                        child: Row(
                         children: [
                            SizedBox(
                              width: 300,height: 60,
                              child: RaisedButton(onPressed:()async{
                                if(formKey.currentState.validate()){
                                  formKey.currentState.save();
                                try{
                                  await FirebaseAuth.instance.createUserWithEmailAndPassword(
                                    email: profile.email, password: profile.password
                                    ).then((value){
                                      formKey.currentState.reset() ;
                                       Fluttertoast.showToast(msg: "สร้างบัญชีผู้ใช้สำเร็จแล้ว",
                                  gravity: ToastGravity.TOP
                                  );
                                    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context){
                                      return LoginScreen();
                                    })); });
                                }on FirebaseAuthException catch(e){
                                  print(e.code);
                                  String message;
                                  //print(e.message);
                                  if(e.code == 'email-already-in-use'){
                                    message = "บัญชีอีเมลนี้มีแล้วในระบบ โปรดใช้อีเมลอื่น";
                                  }else if(e.code == 'weak-password'){
                                    message = "รหัสผ่านต้องมีความยาว 6 ตัวอักษรขึ้นไป";
                                  }else{
                                    message = e.message;
                                  }
                                  Fluttertoast.showToast(msg: e.message,
                                  gravity: ToastGravity.CENTER
                                  );
                                }
                                }
                             },
                              color: Color.fromARGB(255, 255, 93, 93),
                             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),
                              ),
                             child: Text("สมัครสมาชิก",
                             style: TextStyle(color: Color.fromARGB(255, 255, 255,255),fontSize: 25,fontWeight: FontWeight.bold,
                            shadows: [Shadow(color: Color.fromRGBO(0, 0, 0, 100),offset: Offset(0,2),blurRadius: 16),]))
                            ),
                              ),
                         ],
                          ),
                       ),
                       Container(
             margin: EdgeInsets.fromLTRB(50, 0, 30, 10),
            child:Row(
               children:<Widget> [
                 Text("มีบัญชีแล้วใช่ไหม?",style: TextStyle(color: Color.fromARGB(255, 83, 117, 86),fontWeight: FontWeight.bold,
                 fontSize: 18),),
                  FlatButton(textColor: Colors.red[200],onPressed: () {//ปุ่มกดที่นี่เชื่อมไปหน้าสมัครสมาชิก
                   Navigator.push(context,MaterialPageRoute
                   (builder: (context){
                     return LoginScreen ();
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
          ]
          )
       );
  
      }
      return Scaffold(
        body:Center(
         child: CircularProgressIndicator(),
       ),
       );
   },);
     
  
  }
}