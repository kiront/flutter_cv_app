import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My CV App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(appBar: AppBar(
        centerTitle: true,
        title: Text("My CV App"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
          Card(
            elevation: 2.0,
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 30,
                horizontal: 20,
              ),
              child: Column(children: <Widget>[
                CircleAvatar(
                  // backgroundColor: Colors.red,
                  radius: 50,
                  backgroundImage: AssetImage("assets/pp.jpg"),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Kiran Thuyaju", style: TextStyle(
                  fontSize: 25,
      
                ),),
                SizedBox(height: 3,),
                Text("App Developer", style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),),
                SizedBox(height: 7,),
                Text("Hello,I am kiran thuyaju. I am a web developer.", style: TextStyle(
                  fontSize: 15.0,
                  fontFamily: "MoonDance",
      
                ),),
              ],),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10,
              right: 10,
              bottom: 3.0,
            ),
            child: Text("Social Links", style: TextStyle(
              fontSize: 20,
            ),
            ),
          ),
          Card(
            elevation: 2.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(onPressed: (){
                  launch("https://www.facebook.com/thuyaju.kiran/");
                },
                color: Colors.blue,
                 icon: FaIcon(FontAwesomeIcons.facebook),
                ),
                IconButton(onPressed: (){},
                color: Colors.red,
                 icon: FaIcon(FontAwesomeIcons.youtube)
                ),
                IconButton(onPressed: (){},
                color: Colors.pink, 
                icon: FaIcon(FontAwesomeIcons.instagram)
                ),
                IconButton(onPressed: (){},
                color: Colors.lightBlue,
                 icon: FaIcon(FontAwesomeIcons.twitter)
                ),
              ],
            ),
          ),
             Padding(
            padding: EdgeInsets.only(
              left: 10,
              right: 10,
              bottom: 3.0,
            ),
            child: Text("Skills", style: TextStyle(
              fontSize: 20,
            ),
            ),
          ),
          Card(
            elevation: 2.0,
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage("https://miro.medium.com/max/851/1*uHZn4ztcnPkiPijcrOqaUA.png"),
              ),
              title: Text("Web Development"),
              subtitle: Text("HTML, CSS, JavaScript"),
            ),
          ),
      
          Card(
            elevation: 2.0,
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage("https://miro.medium.com/max/851/1*uHZn4ztcnPkiPijcrOqaUA.png"),
              ),
              title: Text("APP Development"),
              subtitle: Text("Dart, Android, Flutter"),
            ),
          ),
          SizedBox(height: 10,),
        ],
        ),
      ),
      ),
    );
  }
}