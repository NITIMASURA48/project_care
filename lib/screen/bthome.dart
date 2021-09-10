import 'package:flutter/material.dart';
import 'package:project_care/screen/addold.dart';
import 'package:project_care/screen/food.dart';
import 'package:project_care/screen/login.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 250, 254, 250),
       appBar: PreferredSize(
            preferredSize: Size.fromHeight(55), //ขนาดappbar
            child: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Color.fromARGB(255, 255, 255, 255),
              leading: IconButton(
              icon: Icon(Icons.close,size: 30,color: Color.fromARGB(255, 25, 53, 102),), onPressed: ()
               { Navigator.push(context,MaterialPageRoute
                    (builder: (context){
                      return AddOldUser();
                    })
                    );  },
            ),
            title: Center(child: Text('หน้าหลัก',style: TextStyle(color: Color.fromARGB(255, 83, 117, 86),fontWeight: FontWeight.bold,fontSize: 22,
             shadows: [Shadow(color: Color.fromRGBO(0, 0, 0,180),offset: Offset(0,2),blurRadius: 25),]), 
           ), ),
           actions:<Widget> [
             IconButton(icon: Icon(Icons.logout,size: 30,color: Color.fromARGB(255, 83, 117, 86),),onPressed: (){
               Navigator.push(context,MaterialPageRoute
                    (builder: (context){
                      return LoginScreen();
                    })
                    );
             },)
             
           ],
            )
       ),
      body: Container(padding: EdgeInsets.all(30),color: Color.fromARGB(255, 255, 255, 255),
        child: GridView.count(crossAxisCount: 2,
      children:<Widget> [
        Card(margin: EdgeInsets.all(12),color: Color.fromARGB(255, 144, 198, 149),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context){return(MenuFood());}));},splashColor:Color.fromARGB(255,232,240,232,),
        child: Center(child: Column(
          children:<Widget> [Icon(Icons.fastfood,size: 70,color: Color.fromARGB(255,255, 255, 255)),
          Text("ตารางอาหาร",style: TextStyle(fontSize: 18,color: Color.fromARGB(255,255, 255, 255),fontWeight: FontWeight.bold,))],
        ),),
        ),),
        Card(margin: EdgeInsets.all(12),color: Color.fromARGB(255, 144, 198, 149), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
       child: InkWell(onTap: (){},splashColor:Color.fromARGB(255,232,240,232,),
        child: Center(child: Column(
          children:<Widget> [Icon(Icons.local_hospital,size: 70,color: Color.fromARGB(255,255, 255, 255)),
          Text("ตารางทานยา",style: TextStyle(fontSize: 18,color: Color.fromARGB(255,255, 255, 255),fontWeight: FontWeight.bold,))],
        ),),
        ),),
        Card(margin: EdgeInsets.all(12),color: Color.fromARGB(255, 144, 198, 149), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
         child: InkWell(onTap: (){},splashColor:Color.fromARGB(255,232,240,232,),
        child: Center(child: Column(
          children:<Widget> [Icon(Icons.table_chart,size: 70,color: Color.fromARGB(255,255, 255, 255)),
          Text("ตารางกิจกรรม",style: TextStyle(fontSize: 18,color: Color.fromARGB(255,255, 255, 255),fontWeight: FontWeight.bold,))],
        ),),
        ),),
        Card(margin: EdgeInsets.all(12),color: Color.fromARGB(255, 144, 198, 149), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
         
         child: InkWell(onTap: (){},splashColor:Color.fromARGB(255,232,240,232,),
        child: Center(child: Column(
          children:<Widget> [Icon(Icons.insert_photo,size: 70,color: Color.fromARGB(255,255, 255, 255)),
          Text("อัลบั้มรูปภาพ",style: TextStyle(fontSize: 18,color: Color.fromARGB(255,255, 255, 255),fontWeight: FontWeight.bold,))],
        ),),
        ),),
        Card(margin: EdgeInsets.all(12),color: Color.fromARGB(255, 144, 198, 149), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
         
         child: InkWell(onTap: (){},splashColor:Color.fromARGB(255,232,240,232,),
        child: Center(child: Column(
          children:<Widget> [Icon(Icons.camera_alt,size: 70,color: Color.fromARGB(255,255, 255, 255)),
          Text("ถ่ายรูป",style: TextStyle(fontSize: 18,color: Color.fromARGB(255,255, 255, 255),fontWeight: FontWeight.bold,))],
        ),),
        ),),
        Card(margin: EdgeInsets.all(12),color: Color.fromARGB(255, 144, 198, 149), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
         child: InkWell(onTap: (){},splashColor:Color.fromARGB(255,232,240,232,),
        child: Center(child: Column(
          children:<Widget> [Icon(Icons.history,size: 70,color: Color.fromARGB(255,255, 255, 255)),
          
          Text('ประวัติการตอบโต้',style: TextStyle(fontSize: 18,color: Color.fromARGB(255,255, 255, 255),fontWeight: FontWeight.bold,))],
        ),),
        ),),
      ],
      ),)
    

    );
  }
}