import 'package:cloneapp_whatsapp/calls.dart';
import 'package:cloneapp_whatsapp/chats.dart';
import 'package:cloneapp_whatsapp/communities.dart';
import 'package:cloneapp_whatsapp/messaging_page.dart';
import 'package:cloneapp_whatsapp/updates.dart';
import 'package:flutter/material.dart';

void main() {
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
      home: Chats(),
    );
  }
}