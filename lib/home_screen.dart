import 'package:appbar/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:appbar/home_screen.dart';
import 'login_screen.dart';
class home_screen extends StatelessWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'appbar',
      home: Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
          leading: Padding(
            padding: EdgeInsets.all(6.0),
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Icon(Icons.flutter_dash,color: Colors.white,),
            ),
           ),
          title: Text('APPBAR',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.yellowAccent,
          ),),
          backgroundColor: Colors.teal,
          actions: [
            IconButton(
                onPressed: () {
              Navigator.push(context,MaterialPageRoute(
                  builder: (context){
                    return search_screen();
                  }),
              );},
              icon: Icon(Icons.info),),
          ],),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 40,right: 40,top: 100,bottom: 30),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    child: Text('flutter',style: TextStyle(fontSize: 30),),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15.0),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                        Colors.yellow,
                        Colors.red,
                        Colors.green,
                      ]),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                            offset: Offset(2, 2),blurRadius: 4,spreadRadius: 3),
                      ]
                    ),),
                  SizedBox(height: 5),
                  Divider(color: Colors.red),
                  SizedBox(height: 5),
                  Container(
                    margin: EdgeInsets.only(left: 15,right: 15),
                    height: 50,
                    width: 500,
                    child: TextField(
                      // textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                        ),
                        // hintText: 'Enter',
                        labelText: 'name',
                      ),),
                  ),
                  SizedBox(height: 5),
                  Container(
                    margin: EdgeInsets.only(left: 15,right: 15),
                    height: 50,
                    width: 500,
                    child: TextField(
                      // textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(),
                        // hintText: 'Enter',
                        labelText: 'password',
                      ),),
                  ),
                  SizedBox(height: 5),
                  IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context){
                              return loginscreen();
                            }));},
                      icon: Icon(Icons.login,size: 40),),],
              ),
            ),
            ),
          ),
        ),
    );
  }
}
