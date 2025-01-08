import 'package:cloneapp_whatsapp/chats.dart';
import 'package:cloneapp_whatsapp/communities.dart';
import 'package:cloneapp_whatsapp/updates.dart';
import 'package:flutter/material.dart';

class Calls extends StatefulWidget{
  @override
  State<Calls> createState()=> _callsState();
}
class _callsState extends State<Calls>{
  List<Map<String, dynamic>> contactsData = [
  {"firstname": "John", "lastname": "Doe", "message": "Hey!", "time": "10:30 AM"},
  {"firstname": "Jane", "lastname": "Smith", "message": "Reminder for meeting.", "time": "9:15 AM"},
  {"firstname": "Michael", "lastname": "Johnson", "message": "Catch up later?", "time": "8:45 AM"},
  {"firstname": "Emily", "lastname": "Davis", "message": "Great job!", "time": "7:00 AM"},
  {"firstname": "Chris", "lastname": "Brown", "message": "Weekend plans?", "time": "Yesterday"},
  {"firstname": "Sophia", "lastname": "Wilson", "message": "Call you soon.", "time": "Yesterday"},
  {"firstname": "Daniel", "lastname": "Martinez", "message": "Thanks earlier!", "time": "2 days ago"},
  {"firstname": "Olivia", "lastname": "Taylor", "message": "Lunch tomorrow?", "time": "2 days ago"},
  {"firstname": "James", "lastname": "Anderson", "message": "Check this out!", "time": "Last week"},
  {"firstname": "Emma", "lastname": "Thomas", "message": "Ready when you are.", "time": "Last week"},
];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromRGBO(12, 16, 20, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(12, 16, 20, 1),
      title: Text("Calls",style: TextStyle(fontSize: 22,color: Colors.white),),
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
            child: Text("Favourites",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
          ),
          ListTile(
                 leading: Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(shape: BoxShape.circle,color: Color.fromRGBO(93, 193, 110, 1),),
                  child: Icon(Icons.favorite,color: Colors.black,),
                  ),
                  title: Text("add Favourite",style: TextStyle(fontSize: 17,color: Colors.white),),
              ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text("Recent",style: TextStyle(fontSize: 17,color: Color.fromRGBO(151, 155, 159, 1),),
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
                  decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(image: AssetImage("assets/images/Coffeeincup.jpg"),fit: BoxFit.cover)),
                  ),
                  title: Text("${contactsData[index]["firstname"]} ${contactsData[index]["lastname"]}",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),),
                  subtitle: Text("${contactsData[index]["time"]}",style: TextStyle(color: Color.fromRGBO(151, 155, 159, 1),fontSize: 15),),
                  trailing: Icon(Icons.call_outlined,color: Colors.white,),
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
        child: Icon(Icons.add_call,color: Colors.black,),
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
              Navigator.replace(context, oldRoute: ModalRoute.of(context)!, newRoute: MaterialPageRoute(builder: (context)=>Chats()));
              },
            child: Icon(Icons.chat_outlined)),label: "Chats"),
          BottomNavigationBarItem(icon: GestureDetector(
            onTap: (){
               Navigator.replace(context, oldRoute: ModalRoute.of(context)!, newRoute: MaterialPageRoute(builder: (context)=>Updates()));
              },
            child:Icon(Icons.cloud_outlined)),label: "Updates"),
          BottomNavigationBarItem(icon: GestureDetector(
            onTap: (){
               Navigator.replace(context, oldRoute: ModalRoute.of(context)!, newRoute: MaterialPageRoute(builder: (context)=>Communities()));
              },
            child:Icon(Icons.people_outline),),label: "Communities"),
          BottomNavigationBarItem(icon: GestureDetector(
            onTap: (){
              Navigator.replace(context, oldRoute: ModalRoute.of(context)!, newRoute: MaterialPageRoute(builder: (context)=>Calls()));
              },
            child:Icon(Icons.call_outlined),),label: "Calls"),
        ]),
    );
  }
}