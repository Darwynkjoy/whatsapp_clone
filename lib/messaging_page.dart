import 'package:cloneapp_whatsapp/chats.dart';
import 'package:flutter/material.dart';

class MessagingPage extends StatefulWidget{
  MessagingPage({super.key,required this.firstName,required this.lastName});
  final String firstName;
  final String lastName;
  @override
  State<MessagingPage> createState()=> _messagingPageState();
}
class _messagingPageState extends State<MessagingPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromRGBO(12, 16, 20, 1),
      appBar: AppBar(
      backgroundColor: Color.fromRGBO(12, 16, 20, 1),
      title: Text("${widget.firstName} ${widget.lastName}",style: TextStyle(fontSize: 22,color: Colors.white),),
      leading: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.replace(context, oldRoute: ModalRoute.of(context)!, newRoute: MaterialPageRoute(builder: (context)=>Chats()));
            },
            child: Icon(Icons.arrow_back,color: Colors.white,)),
          Container(
            height: 32,
            width: 32,
            decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(image: AssetImage("assets/images/Coffeeincup.jpg"),fit: BoxFit.cover)),
             ),
        ],
      ),
      actions: [
        Icon(Icons.video_call_outlined,color: Colors.white,size: 30,),
        SizedBox(width: 20,),
        Icon(Icons.call,color: Colors.white,),
        SizedBox(width: 20,),
        Icon(Icons.more_vert,color: Colors.white,),
      ],
      centerTitle: false,
      ),
      body: Stack(
        children: [
          Container(
            height: 730,
            width: 420,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/chatbackground_3.png"),fit: BoxFit.cover)),
            ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromRGBO(36, 40, 46, 1),
                          border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          borderSide: BorderSide.none,),
                          prefixIcon: Icon(Icons.emoji_emotions_outlined,size: 30,color: Color.fromRGBO(151, 155, 159, 1)),
                          suffixIcon: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                  icon: Icon(
                                    Icons.document_scanner_outlined,
                                    color: Color.fromRGBO(151, 155, 159, 1),
                                  ),
                                  onPressed: () {
                                    print("Document pressed");
                                  },
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.currency_rupee_outlined,
                                    color: Color.fromRGBO(151, 155, 159, 1),
                                  ),
                                  onPressed: () {},
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.camera_alt_outlined,
                                    color: Color.fromRGBO(151, 155, 159, 1),
                                  ),
                                  onPressed: () {}
                                ),
                                SizedBox(width: 10,)
                            ],
                          ),
                          hintText: "Message",
                          hintStyle: TextStyle(fontSize: 20,color: Colors.white),
                          ),
                        ),
                      ),
                  SizedBox(width: 5,),
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(shape: BoxShape.circle,color: Color.fromRGBO(87, 188, 104, 1),),
                    child: Icon(Icons.mic,size: 30,color: Colors.black,),
                    ),
                    ],
                  ),
                ),
               ],
             ),
        ]
      )
    );
  }
}
