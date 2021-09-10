import 'package:flutter/material.dart';
import 'package:project_care/screen/bthome.dart';
import 'package:project_care/screen/call.dart';
import 'package:project_care/screen/noti.dart';
import 'package:project_care/screen/profi.dart';

class Lanuncher extends StatefulWidget {
  static const routeName = '/';
  @override
  _LanuncherState createState() => _LanuncherState();
  
}

class _LanuncherState extends State<Lanuncher> {
  int _selectedIndex =0;
  List<Widget> _pageWidget = <Widget>[
    HomePage(),
    CallPage(),
    NotificationsPage(),
    SettingProfile()
  ];
  List<BottomNavigationBarItem> _menuBar = <BottomNavigationBarItem>[
    BottomNavigationBarItem(icon: Icon(Icons.home,size: 35,),
    title: Text(" "),
    ),
    BottomNavigationBarItem(icon: Icon(Icons.videocam,size: 35,),
    title: Text(" "),
    ),
    BottomNavigationBarItem(icon: Icon(Icons.notifications,size: 35,),
    title: Text(" "),
    ),
    BottomNavigationBarItem(icon: Icon(Icons.person,size:35,),
    title: Text(" "),
    ),
  ];
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageWidget.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: _menuBar,
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 144, 198, 149),unselectedItemColor:Color.fromARGB(255, 184, 188, 185),
        onTap: _onItemTapped,
      ),
    );
  }
}