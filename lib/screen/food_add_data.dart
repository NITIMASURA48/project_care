import 'package:flutter/material.dart';
import 'package:project_care/screen/food.dart';

class FoodDB extends StatefulWidget {
  @override
  _FoodDBState createState() => _FoodDBState();
}

class _FoodDBState extends State<FoodDB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
       appBar: PreferredSize(
          preferredSize: Size.fromHeight(55),
          child:AppBar(automaticallyImplyLeading: false,
            backgroundColor: Color.fromARGB(255, 250, 254, 250),
            title: Center(child: Text('ตารางการรับประทานอาหาร',style: TextStyle(color: Color.fromARGB(255, 83, 117, 86),fontWeight: FontWeight.bold,fontSize: 20,
             shadows: [Shadow(color: Color.fromRGBO(0, 0, 0,180),offset: Offset(0,2),blurRadius: 25),]), 
           ), ),
           leading: IconButton(
                icon: Icon(Icons.chevron_left,size: 25,color: Color.fromARGB(255, 83, 117,86),), onPressed: ()
                 { Navigator.push(context,MaterialPageRoute
                      (builder: (context){
                        return MenuFood();
                      })
                      );  },
              ),
    ),
       ), 
       body: Column(
         children: [
         Container(alignment: Alignment.center,margin: EdgeInsets.all(10),height: 300,width: double.infinity,
       decoration: BoxDecoration(color: Color.fromARGB(255, 232, 240, 232),boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), //color of shadow
                  spreadRadius: 5, //spread radius
                  blurRadius: 7, // blur radius
                  offset: Offset(0, 2),),])
       ),
        Container( 
          alignment: Alignment.center,margin: EdgeInsets.all(43), //ปุ่มบันทึกข้อมูล
             child: Row(
               children: [
                 SizedBox(     
                   width: 300,height: 60,        
                   child: RaisedButton(onPressed:(){
                     Navigator.push(context, MaterialPageRoute(builder: (context){
                       return MenuFood();
                     })
                     );
                   },
                   color: Color.fromARGB(255, 255, 93, 93),
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  child: Text("บันทึกข้อมูล",
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 25,fontWeight: FontWeight.bold,
                  shadows: [Shadow(color: Color.fromRGBO(0, 0, 0, 10),offset: Offset(5,5),blurRadius: 19),]
                  )),
                   ),
                 ),
               ],
               ),
            ),
             ],
       )
       
    );
  }
}