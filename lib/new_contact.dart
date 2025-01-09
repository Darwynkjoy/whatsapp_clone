import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class NewContact extends StatefulWidget{
  @override
  State<NewContact> createState()=> _newContactState();
}
class _newContactState extends State<NewContact>{

  TextEditingController Firstname=TextEditingController();
  TextEditingController lastname=TextEditingController();
  TextEditingController phone=TextEditingController();

  late Box box;
  List<Map<String,dynamic>> contactsData=[];

  void initState(){
    super.initState();
    openbox();
  }

  Future<void> openbox()async{
    box=await Hive.openBox("contacts");
    loadContacts();
  }
  void loadContacts(){
    List<dynamic>? contact=box.get("contacts")?.cast<dynamic>();
    if (contact != null){
      setState(() {
        contactsData=List<Map<String,dynamic>>.from(contact);
      });
    }
    else{
      setState(() {
        contactsData=[];
      });
    }
  }

  void saveContact()async{
     await box.put("contacts", contactsData); 
    }


  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromRGBO(12, 16, 20, 1),
      appBar: AppBar(
      backgroundColor: Color.fromRGBO(12, 16, 20, 1),
      title: Text("New contact",style: TextStyle(fontSize: 22,color: Colors.white),),
      leading: Icon(Icons.arrow_back,color: Colors.white,),
      centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.people_outline,color: Color.fromRGBO(151, 155, 159, 1),),
                SizedBox(width: 10,),
                Expanded(
                  child: TextField(
                    controller: Firstname,
                    cursorColor: Color.fromRGBO(77, 192, 97, 1),
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: "First name",
                    hintStyle: TextStyle(color: Color.fromRGBO(151, 155, 159, 1)),
                      ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 34,),
                Expanded(
                  child: TextField(
                    controller: lastname,
                    cursorColor: Color.fromRGBO(77, 192, 97, 1),
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: "Last name",
                      hintStyle: TextStyle(color: Color.fromRGBO(151, 155, 159, 1)),
                      ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Icon(Icons.phone_outlined,color: Color.fromRGBO(151, 155, 159, 1),),
                SizedBox(width: 10,),
                Expanded(
                  child: TextField(
                    controller: phone,
                    cursorColor: Color.fromRGBO(77, 192, 97, 1),
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: "Phone",
                      hintStyle: TextStyle(color: Color.fromRGBO(151, 155, 159, 1)),
                      ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 470,),
            SizedBox(
              height: 40,
              width: 380,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  backgroundColor: Color.fromRGBO(77, 192, 97, 1),
                ),
                onPressed: (){
                  setState(() {
                    contactsData.add({
                      "firstname":Firstname.text,
                      "lastname":lastname.text,
                      "phone":phone.text
                    });
                    saveContact();
                    Firstname.clear();
                    lastname.clear();
                    phone.clear();
                    print("saved data :${contactsData.length}");
                  });
                  Navigator.pop(context);
                },
                child: Text("Save",style: TextStyle(fontSize: 16,color: Colors.black),)),
            )
          ],
        ),
      ),
    );
  }
}