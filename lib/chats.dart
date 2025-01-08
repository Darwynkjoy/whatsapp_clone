import 'package:cloneapp_whatsapp/calls.dart';
import 'package:cloneapp_whatsapp/communities.dart';
import 'package:cloneapp_whatsapp/messaging_page.dart';
import 'package:cloneapp_whatsapp/updates.dart';
import 'package:flutter/material.dart';

class Chats extends StatefulWidget{
  @override
  State<Chats> createState()=> _chatState();
}
class _chatState extends State<Chats>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromRGBO(12, 16, 20, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(12, 16, 20, 1),
      title: Text("WhatsApp",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
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
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
              filled: true,
              fillColor: Color.fromRGBO(36, 40, 46, 100),
              border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              borderSide: BorderSide.none,),
              prefixIcon: Icon(Icons.search),
              hintText: "Search or Ask Meta AI",
              hintStyle: TextStyle(color: Color.fromRGBO(151, 155, 159, 1)),
                ),
            ),
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 30,
                width: 45,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Color.fromRGBO(36, 40, 46, 100),),
                child: Center(child: Text("All",style: TextStyle(fontSize: 15,color: Color.fromRGBO(151, 155, 159, 1)),)),
              ),
              Container(
                height: 30,
                width: 70,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Color.fromRGBO(36, 40, 46, 100),),
                child: Center(child: Text("Unread",style: TextStyle(fontSize: 15,color: Color.fromRGBO(151, 155, 159, 1)),)),
              ),
              Container(
                height: 30,
                width: 80,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Color.fromRGBO(36, 40, 46, 100),),
                child: Center(child: Text("Favorites",style: TextStyle(fontSize: 15,color: Color.fromRGBO(151, 155, 159, 1)),)),
              ),
              Container(
                height: 30,
                width: 70,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Color.fromRGBO(36, 40, 46, 100),),
                child: Center(child: Text("Groups",style: TextStyle(fontSize: 15,color: Color.fromRGBO(151, 155, 159, 1)),)),
              ),
              Container(
                height: 30,
                width: 40,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Color.fromRGBO(36, 40, 46, 100),),
                child: Center(child: Text("+",style: TextStyle(fontSize: 20,color:Color.fromRGBO(151, 155, 159, 1)),)),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Expanded(
            child:
            ListView.separated(itemBuilder: (context,index){
              return ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MessagingPage()),);
                },
                 leading: Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(image: AssetImage("assets/images/Coffeeincup.jpg"))),
                  ),
                  title: Text("Chilling",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),),
                  subtitle: Row(
                    children: [
                      Icon(Icons.done_all,color: Colors.blue,size: 20,),
                      Text("data",style: TextStyle(color: Color.fromRGBO(151, 155, 159, 1),fontSize: 15),),
                    ],
                  ),
                  trailing: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("12:00 am",style: TextStyle(color: Color.fromRGBO(93, 193, 110, 1),fontSize: 12),),
                      SizedBox(height: 5,),
                      Container(
                        height: 18,
                        width: 18,
                        decoration: BoxDecoration(shape: BoxShape.circle,color: Color.fromRGBO(93, 193, 110, 1),),
                        child: Center(child: Text("1",style: TextStyle(fontSize: 10,color: Colors.black),)),
                        ),
                    ],
                  ),
              );
            }, separatorBuilder: (context,index){
              return SizedBox(height: 15,);
            }, itemCount: 10)  
          )
        ],
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(93, 193, 110, 1),
        onPressed: (){},
        child: Icon(Icons.add_comment,color: Colors.black,),
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
