import 'package:cloneapp_whatsapp/calls.dart';
import 'package:cloneapp_whatsapp/chats.dart';
import 'package:cloneapp_whatsapp/updates.dart';
import 'package:flutter/material.dart';

class Communities extends StatefulWidget{
  @override
  State<Communities> createState()=> _communitiesState();
}
class _communitiesState extends State<Communities>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromRGBO(12, 16, 20, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(12, 16, 20, 1),
      title: Text("Communities",style: TextStyle(fontSize: 22,color: Colors.white),),
      actions: [
        Icon(Icons.qr_code_scanner,color: Colors.white,),
        SizedBox(width: 20,),
        Icon(Icons.camera_alt_outlined,color: Colors.white,),
        SizedBox(width: 20,),
        Icon(Icons.more_vert,color: Colors.white,),
      ],
      centerTitle: false,
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Center(
            child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),image: DecorationImage(image: AssetImage("assets/images/Screenshot_20250106-201450_3 copy.png"),fit: BoxFit.cover)),
                ),
          ),
          Text("Stay connected with a community",style: TextStyle(fontSize: 20,color: Colors.white),),
          SizedBox(height: 10,),
          Text("Communities bring members together in",textAlign: TextAlign.center,style: TextStyle(fontSize: 15,color: Colors.white),),
          Text("topic based groups, and make it easy to get admin",textAlign: TextAlign.center,style: TextStyle(fontSize: 15,color: Colors.white),),
          Text("announcements. Any community you're added to will \nappear here.",textAlign: TextAlign.center,style: TextStyle(fontSize: 15,color: Colors.white),),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: (){}, child: Text("See example comunities",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.blue,),)),
              Icon(Icons.arrow_forward_ios,color: Colors.blue,size: 10,),
            ],
          ),
          SizedBox(height: 30,),
          SizedBox(
            height: 50,
            width: 350,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(93, 193, 110, 1),
              ),
              onPressed: (){}, child: Text("Start your community",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),))

        ],
      ),
      

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromRGBO(12, 16, 20, 1),
        selectedItemColor: Color.fromRGBO(93, 193, 110, 1),
        selectedFontSize: 13,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        unselectedItemColor: Colors.white,
        unselectedFontSize: 13,
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        items: [
          BottomNavigationBarItem(icon: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Chats()));
              },
            child: Icon(Icons.chat_outlined)),label: "Chats"),
          BottomNavigationBarItem(icon: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Updates()));
              },
            child:Icon(Icons.cloud_outlined)),label: "Updates"),
          BottomNavigationBarItem(icon: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Communities()));
              },
            child:Icon(Icons.people_outline),),label: "Communities"),
          BottomNavigationBarItem(icon: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Calls()));
              },
            child:Icon(Icons.call_outlined),),label: "Calls"),
        ]),
    );
  }
}