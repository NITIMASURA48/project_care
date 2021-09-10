import 'package:flutter/material.dart';
import 'package:project_care/screen/addold.dart';
import 'package:project_care/screen/lanuncher.dart';

class OldForm extends StatefulWidget {

  @override
  _OldFormState createState() => _OldFormState();
}
final formKey = GlobalKey<FormState>();
final TextField name = new TextField( 
      decoration: new InputDecoration(
        contentPadding: EdgeInsets.all(5),
        border: InputBorder.none 
      ),
      keyboardType: TextInputType.text,
      autocorrect: false,     //ระบบแนะนำคำถูก
      onChanged: (text){
      },
    );
    final TextField congenital = new TextField( 
      decoration: new InputDecoration(
        contentPadding: EdgeInsets.all(5),
        border: InputBorder.none 
      ),
      keyboardType: TextInputType.text,
      autocorrect: false,     //ระบบแนะนำคำถูก
      onChanged: (text){
      },
    );
class _OldFormState extends State<OldForm> {

String _selectedGender = 'male';
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
              icon: Icon(Icons.close,size: 20,color: Color.fromARGB(255, 25, 53, 102),), onPressed: ()
               { Navigator.push(context,MaterialPageRoute
                    (builder: (context){
                      return AddOldUser();
                    })
                    );  },
            ),
            title: Center(child: Text('เพิ่มข้อมูลผู้สูงอายุ',style: TextStyle(color: Color.fromARGB(255, 83, 117, 86),fontWeight: FontWeight.bold,fontSize: 22,
             shadows: [Shadow(color: Color.fromRGBO(0, 0, 0,180),offset: Offset(0,2),blurRadius: 25),]), 
           ), ),
           actions:<Widget> [
             IconButton(icon: Icon(Icons.save,size: 30,color: Color.fromARGB(255, 83, 117, 86),),onPressed: (){
               Navigator.push(context,MaterialPageRoute
                    (builder: (context){
                      return Lanuncher();
                    })
                    );
             },)
             
           ],
            )
       ),
      body: Column(children: [
          SizedBox(height: 10),
          Container(padding: EdgeInsets.all(20),alignment: FractionalOffset.center,
          width:150,height:150,
          decoration: BoxDecoration(
           color: Color.fromARGB(255, 255, 255, 255) ,borderRadius: BorderRadius.circular(100),
           boxShadow: [
             BoxShadow(
               color: Color.fromARGB(255, 202, 202, 202).withOpacity(0.3),
               offset: Offset(0.0,4.0),blurRadius: 4.0 ,)
           ],
           border: Border.all(width: 1,color: Color.fromARGB(255, 212, 214, 212)),
           ),
           ),
            Column(children: [
              Container(
                        child: Form(
                          key: formKey,
                          child: SingleChildScrollView(),
                      ),
                      ),
                      Align(alignment: Alignment.centerLeft,child: Container(child: 
                      Text("    ชื่อผู้ใช้งาน",style: TextStyle(fontSize:16,color: Color.fromARGB(255, 83, 117, 86),fontWeight: FontWeight.bold)))),
                       Container(   //ช่องกรอกชื่อผู้ใช้
                        margin: EdgeInsets.fromLTRB(20, 10, 20, 5),
                        decoration: new BoxDecoration(
                          color: Color.fromARGB(255,255 ,255 ,255 ),
                        border: Border.all(width: 1,color: Color.fromARGB(255, 212, 214, 212)),
                        borderRadius: const BorderRadius.all(const Radius.circular(30)),
                        ),
                        child: name,
                       ),
                        Align(alignment: Alignment.centerLeft,child: Container(child: 
                      Text("    วัน/เดือน/ปีเกิด",style: TextStyle(fontSize:16,color: Color.fromARGB(255, 83, 117, 86),fontWeight: FontWeight.bold))
                      ,),),
                      Align(alignment: Alignment.centerLeft,child: Container(child: 
                      Text("    เพศ",style: TextStyle(fontSize:16,color: Color.fromARGB(255, 83, 117, 86),fontWeight: FontWeight.bold)))),
                      ListTile(
                        leading: Radio(value: 'ชาย',
                        groupValue: _selectedGender,activeColor: Color.fromARGB(255,83, 117, 86),onChanged: (value){
                          setState(() {
                            _selectedGender = value;
                          });
                        },),
                        title: Text('ชาย',style: TextStyle(fontSize:16,color: Color.fromARGB(255, 83, 117, 86),fontWeight: FontWeight.bold))),
                      ListTile(
                leading: Radio(
                  value: 'หญิง',
                  groupValue: _selectedGender,activeColor: Color.fromARGB(255,83, 117, 86),
                  onChanged: (value) {
                    setState(() {
                      _selectedGender = value;
                    });
                  },
                ),
                title: Text('หญิง',style: TextStyle(fontSize:16,color: Color.fromARGB(255, 83, 117, 86),fontWeight: FontWeight.bold)),
              ),
              Align(alignment: Alignment.centerLeft,child: Container(child: 
                      Text("    โรคประจำตัว",style: TextStyle(fontSize:16,color: Color.fromARGB(255, 83, 117, 86),fontWeight: FontWeight.bold)))),
                       Container(   //ช่องกรอกชื่อผู้ใช้
                        margin: EdgeInsets.fromLTRB(20, 10, 20, 5),
                        decoration: new BoxDecoration(
                          color: Color.fromARGB(255,255 ,255 ,255 ),
                        border: Border.all(width: 1,color: Color.fromARGB(255, 212, 214, 212)),
                        borderRadius: const BorderRadius.all(const Radius.circular(30)),
                        ),
                        child: congenital,
                       ),
           ],
           ),
      ],
      ),
    );
  }
}