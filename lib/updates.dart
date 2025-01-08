import 'package:cloneapp_whatsapp/calls.dart';
import 'package:cloneapp_whatsapp/chats.dart';
import 'package:cloneapp_whatsapp/communities.dart';
import 'package:flutter/material.dart';

class Updates extends StatefulWidget{
  @override
  State<Updates> createState()=> _updatesState();
}
class _updatesState extends State<Updates>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromRGBO(12, 16, 20, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(12, 16, 20, 1),
      title: Text("Updates",style: TextStyle(fontSize: 22,color: Colors.white),),
      actions: [
        Icon(Icons.qr_code_scanner,color: Colors.white,),
        SizedBox(width: 20,),
        Icon(Icons.camera_alt_outlined,color: Colors.white,),
        SizedBox(width: 20,),
        Icon(Icons.search,color: Colors.white,),
        SizedBox(width: 20,),
        Icon(Icons.more_vert,color: Colors.white,),
      ],
      centerTitle: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text("Status",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
          ),
          ListTile(
                 leading: Stack(
                   children: [
                    Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(image: AssetImage("assets/images/Coffeeincup.jpg"))),
                    ),
                    Positioned(
                      left: 30,
                      top: 23,
                      child: Container(
                      height: 27,
                      width: 27,
                      decoration: BoxDecoration(shape: BoxShape.circle,color: Color.fromRGBO(93, 193, 110, 1),border: Border.all(width: 2,color: Colors.black)),
                      child: Center(child: Text("+",style: TextStyle(fontSize: 17,color: Colors.black),)),
                      ),
                    ),
                    ]
                 ),
                  title: Text("My status",style: TextStyle(fontSize: 17,color: Colors.white),),
                  subtitle: Text("Tap to add status update",style: TextStyle(color: Color.fromRGBO(151, 155, 159, 1),fontSize: 15),),
              ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text("Recent updates",style: TextStyle(fontSize: 15,color: Color.fromRGBO(151, 155, 159, 1),),
          ),
          ),
          SizedBox(height: 10,),
          Expanded(
            child:
            ListView.separated(itemBuilder: (context,index){
              return ListTile(
                 leading: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(shape: BoxShape.circle,border:Border.all(width: 2,color: Color.fromRGBO(93, 193, 110, 1),),image: DecorationImage(image: AssetImage("assets/images/Coffeeincup.jpg"),fit: BoxFit.cover)),
                  ),
                  title: Text("Chilling",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),),
                  subtitle: Text("28 minutes ago",style: TextStyle(color: Color.fromRGBO(151, 155, 159, 1),fontSize: 15),),
              );
            }, separatorBuilder: (context,index){
              return SizedBox(height: 10,);
            }, itemCount: 10)  
          )
        ],
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(93, 193, 110, 1),
        onPressed: (){},
        child: Icon(Icons.camera_alt,color: Colors.black,),
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