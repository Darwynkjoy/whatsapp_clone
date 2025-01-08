import 'package:cloneapp_whatsapp/chats.dart';
import 'package:cloneapp_whatsapp/new_contact.dart';
import 'package:cloneapp_whatsapp/welcomepage.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main()async{
  await Hive.initFlutter();
  var box=await Hive.openBox("whatsappbox");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
     debugShowCheckedModeBanner: false,
      home: Welcomepage(),
    );
  }
}