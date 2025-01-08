import 'package:cloneapp_whatsapp/chats.dart';
import 'package:flutter/material.dart';

class Welcomepage extends StatefulWidget{
  @override
  State<Welcomepage> createState()=> _welcomepageState();
}
class _welcomepageState extends State<Welcomepage>{

void initState(){
  super.initState();
  auto();
}

  void auto()async{
    await Future.delayed(Duration(seconds: 3));
    Navigator.replace(context, oldRoute: ModalRoute.of(context)!, newRoute: MaterialPageRoute(builder: (context)=>Chats()));
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(height: 280,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 70,
                width: 70,
                child: Image(image: AssetImage("assets/images/whatsapp-512.png"))),
            ],
          ),
          SizedBox(height: 300,),
          Text("from",style: TextStyle(color: const Color.fromARGB(255, 212, 212, 212)),),
          SizedBox(
            height: 80,
            child: Image(image: AssetImage("assets/images/meta.png"))),
        ],
      ),
    );
  }
}