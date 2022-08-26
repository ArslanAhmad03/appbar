import 'package:flutter/material.dart';

class search_screen extends StatelessWidget {
  const search_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('ABOUT',
        style: TextStyle(
          color: Colors.black,
        ),),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Text('APPBAR',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
              Container(
                child: Text(
                  'AppBar is usually the topmost component of the app '
                      '(or sometimes the bottom-most), it contains the toolbar and some '
                      'other common action buttons. As all the components in a flutter '
                      'application are a widget or a combination of widgets.'
                ),),
              Container(
                alignment: Alignment.topLeft,
                child: Text('BOX DECORATION',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
              Container(
                child: Text(
                  'The BoxDecoration class provides a variety of ways to draw a box. '
                      'The box has a border, a body, and may cast a boxShadow. '
                      'The shape of the box can be a circle or a rectangle. If it is '
                      'a rectangle, then the borderRadius property controls the roundness '
                      'of the corners. The body of the box is painted in layers.',
                ),),
              Container(
                alignment: Alignment.topLeft,
                child: Text('TEXT FIELD',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
              Container(
                child: Text(
                  'TextField in Flutter is the most commonly used text input widget '
                      'that allows users to collect inputs from the keyboard into an '
                      'app. We can use the TextField widget in building forms, sending '
                      'messages, creating search experiences, and many more. By default, '
                      'Flutter decorated the TextField with an underline.',
                ),),
              Container(
                alignment: Alignment.topLeft,
                child: Text('ICON BUTTON',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
              Container(
                child: Text(
                  'In Flutter IconButton is a widget that prints a picture (icon) on top '
                      'of Material widget. As a button, you can define a function that '
                      'will be executed when the button is pressed. It''s also possible '
                      'to customize the look and touch effects'' for the button.',
                ),),
            ],
          ),
        ),
      ),
    );
  }
}
