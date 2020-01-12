import 'package:flutter/material.dart';
import "./chat_screen.dart";
import "./call_screen.dart";

class HomeScreen extends StatelessWidget {
  final List<Widget> tabs = [
    Tab(
      icon: Icon(Icons.camera_alt),
    ),
    Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text("CHATS"),
        ],
      ),
    ),
    Tab(
      text: "STATUS",
    ),
    Tab(
      text: "CALLS",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: Colors.teal[800],
            floatingActionButtonTheme:
                FloatingActionButtonThemeData(backgroundColor: Colors.green),
            textTheme: TextTheme(body1: TextStyle(fontSize: 16.0))),
        home: Builder(builder: (BuildContext context) {
          return DefaultTabController(
            length: tabs.length,
            child: Scaffold(
              floatingActionButton: FloatingActionButton(
                  onPressed: () {}, child: Icon(Icons.chat)),
              appBar: AppBar(
                title: Text("Whatsapp"),
                actions: <Widget>[
                  IconButton(
                    icon: Icon(Icons.search, color: Colors.white),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.chat, color: Colors.white),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.more_vert, color: Colors.white),
                    onPressed: () {},
                  )
                ],
                bottom: TabBar(
                  tabs: tabs,
                  indicatorColor: Colors.white,
                ),
              ),
              body: TabBarView(
                children: <Widget>[
                  Text("hello1"),
                  ChatScreen(context),
                  Text("hello3"),
                  CallScreen()
                ],
              ),
            ),
          );
        }));
  }
}
