import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:agora_rtc_engine/rtc_local_view.dart' as RtcLocalView;
import 'package:agora_rtc_engine/rtc_remote_view.dart'as RtcRemoteView; 

const appId = "f19eadb57450428eb26c7ccc0d8d901e";
const token ="006f19eadb57450428eb26c7ccc0d8d901eIABjanxhWeNwVvy8g6o2KPawqVNfrgtuwU+/XPPHC49kLh82bskAAAAAEADPn0NtK7I5YQEAAQAqsjlh";
class CallPage extends StatefulWidget {
  @override
  _CallPageState createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
   int  _remoteUid;
   RtcEngine _engine;

  void initState() {
    super.initState();
    initAgora();
  }
  Future<void> initAgora() async {
    // retrieve permissions
    await[Permission.microphone,Permission.camera].request();
    
    _engine = await RtcEngine.create("f19eadb57450428eb26c7ccc0d8d901e");
    
    await _engine.enableVideo();
    _engine.setEventHandler(
      RtcEngineEventHandler(
      joinChannelSuccess: (String channel,int uid, int elapsed){
        print("local user $uid joined");
      },
      userJoined: (int uid, int elapsed){
        print("remote user $uid joined");
        setState(() {
              _remoteUid = uid;
        });
      },
      userOffline: (int uid, UserOfflineReason reason){
         print("remote user $uid left channel");
         setState(() {
              _remoteUid = null;
        });
      },
    ),
    );
    await _engine.joinChannel(token, "porjaiP", null, 0);
     }
  

  Widget build(BuildContext context) {
    return Scaffold(
    appBar: PreferredSize(
      preferredSize: Size.fromHeight(55),
      child: AppBar(automaticallyImplyLeading: false,
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            title:Center(child:  Text('VIDEOCALL',style: TextStyle(fontSize:20,
        color: Color.fromARGB(255, 83, 117, 86),fontWeight: FontWeight.bold,
        shadows: [Shadow(color: Color.fromRGBO(0, 0, 0,180),offset: Offset(0,2),blurRadius: 25),]
         ),),)
            ),
      ),
      body: Stack(
        children: [
          Center(
            child: _remoteVideo(),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 150,
              height: 200,
              child: Center(
                child: RtcLocalView.SurfaceView(),
              ),
            ),
          ),
        ],
      ),
    );
  }
   Widget _remoteVideo() {
    if (_remoteUid != null) {
      return RtcRemoteView.SurfaceView( uid: _remoteUid);
    } else {
      return Text(
        'กรุณารอสายสักครู่',
        textAlign: TextAlign.center,
      );
    }
  }

}