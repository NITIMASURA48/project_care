import 'package:flutter/material.dart';
import 'package:project_care/screen/bthome.dart';
import 'package:project_care/screen/food_add_data.dart';

class MenuFood extends StatefulWidget {
  @override
  _MenuFoodState createState() => _MenuFoodState();
}

class _MenuFoodState extends State<MenuFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(

        height: 70,width: 70,
        padding: EdgeInsets.all(6),
        margin: EdgeInsets.only(top:33),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Color.fromARGB(255, 151, 167, 195).withOpacity(0.1),
        ),
        child: FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 144, 198, 149),      
          child: Icon(Icons.add,color: Color.fromARGB(255, 255,255,255),),
          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){return FoodDB();}));},
        ),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
       appBar: PreferredSize(
          preferredSize: Size.fromHeight(55),
          child:AppBar(automaticallyImplyLeading: false,
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            leading: IconButton(
              icon: Icon(Icons.chevron_left,size: 30,color: Color.fromARGB(255, 83, 117, 86),), onPressed: ()
               { Navigator.push(context,MaterialPageRoute
                    (builder: (context){
                      return HomePage();
                    })
                    );  },
            ),
      title: Center(child: Text('ตารางการรับประทานอาหาร',style: TextStyle(color: Color.fromARGB(255, 83, 117, 86),fontWeight: FontWeight.bold,fontSize: 20,
             shadows: [Shadow(color: Color.fromRGBO(0, 0, 0,180),offset: Offset(0,2),blurRadius: 25),]), 
           ), ),
    ),
       ), 
    );
  }
}