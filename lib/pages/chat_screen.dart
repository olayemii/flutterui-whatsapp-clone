import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/single_chat_screen.dart';
import 'package:whatsapp_clone/widgets/badge.dart';

class ChatScreen extends StatelessWidget {
  final BuildContext context;

  ChatScreen(this.context);
  final List<Map> chats = [
    {
      "name": "August Alsina",
      "last_chat":
          "Aliquip duis in est sunt sunt ullamco exercitation duis id labore",
      "time_of_chat": "10:23 am",
      "profile_photo": "https://randomuser.me/api/portraits/men/46.jpg",
      "chat_count": 12
    },
    {
      "name": "Lady Gaga",
      "last_chat":
          "Aliquip duis in est sunt sunt ullamco exercitation duis id labore",
      "time_of_chat": "11:23 am",
      "profile_photo": "https://randomuser.me/api/portraits/women/47.jpg",
      "chat_count": 2
    },
    {
      "name": "Shiloh Dynasty",
      "last_chat":
          "Aliquip duis in est sunt sunt ullamco exercitation duis id labore",
      "time_of_chat": "10:48 am",
      "profile_photo": "https://randomuser.me/api/portraits/men/12.jpg",
      "chat_count": 1
    },
    {
      "name": "Post Malone",
      "last_chat":
          "Aliquip duis in est sunt sunt ullamco exercitation duis id labore",
      "time_of_chat": "9:23 pm",
      "profile_photo": "https://randomuser.me/api/portraits/men/40.jpg",
      "chat_count": 5
    },
    {
      "name": "Rihanna 💙",
      "last_chat":
          "Aliquip duis in est sunt sunt ullamco exercitation duis id labore",
      "time_of_chat": "9:23 pm",
      "profile_photo": "https://randomuser.me/api/portraits/women/40.jpg",
      "chat_count": 5
    },
    {
      "name": "Sia 💙",
      "last_chat":
          "Aliquip duis in est sunt sunt ullamco exercitation duis id labore",
      "time_of_chat": "5:13 pm",
      "profile_photo": "https://randomuser.me/api/portraits/women/20.jpg",
      "chat_count": 1
    },
    {
      "name": "OLayemii",
      "last_chat":
          "Aliquip duis in est sunt sunt ullamco exercitation duis id labore",
      "time_of_chat": "2:13 pm",
      "profile_photo": "https://randomuser.me/api/portraits/women/23.jpg",
      "chat_count": 1
    },
  ];

  Widget _generateChatBody(data) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 5.0),
        child: ListTile(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => SingleChatScreen(data)));
          },
          leading: CircleAvatar(
            radius: 25.0,
            backgroundImage: NetworkImage(data["profile_photo"]),
          ),
          title: Text(
            data["name"],
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                  child: Text(data["last_chat"],
                      overflow: TextOverflow.ellipsis, softWrap: false))
            ],
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: Text(
                  data["time_of_chat"],
                  style: TextStyle(fontSize: 12.0),
                ),
              ),
              Badge(count: data["chat_count"])
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: Container(
            child: ListView.builder(
              itemCount: chats.length,
              itemBuilder: (BuildContext context, int index) {
                return _generateChatBody(chats[index]);
              },
            ),
          ),
        )
      ],
    );
  }
}
