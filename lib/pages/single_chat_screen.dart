import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/chat_bubble.dart';

class SingleChatScreen extends StatelessWidget {
  final Map data;
  SingleChatScreen(this.data);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          titleSpacing: 0.0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                radius: 15.0,
                backgroundImage: NetworkImage(data["profile_photo"]),
              ),
              SizedBox(
                width: 10.0,
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(data["name"]),
                  Text(
                    "online",
                    style: TextStyle(
                        fontSize: 14.0, fontWeight: FontWeight.normal),
                  )
                ],
              ))
            ],
          ),
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.videocam)),
            IconButton(onPressed: () {}, icon: Icon(Icons.phone)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ],
        ),
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://user-images.githubusercontent.com/15075759/28719144-86dc0f70-73b1-11e7-911d-60d70fcded21.png"))),
            ),
            Column(
              children: <Widget>[
                Expanded(
                  child: ListView(
                    children: <Widget>[
                      ChatBubble(
                        message: "Nisi cillum incididunt officia in esse. ☝",
                        messageType: MESSAGE_TYPES.SENT,
                      ),
                      ChatBubble(
                        message: "Thank you.",
                        messageType: MESSAGE_TYPES.RECIEVED,
                      )
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                              height: 50.0,
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(18.0))),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.insert_emoticon, size: 30.0),
                                  Expanded(
                                    child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10.0),
                                        child: Text("Type your text here")),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Transform.rotate(
                                        angle: 200.0,
                                        child: Icon(Icons.attach_file)),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.camera_alt,
                                      color: Colors.grey[800],
                                    ),
                                  )
                                ],
                              )),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10.0),
                          width: 50.0,
                          height: 50.0,
                          child: Icon(Icons.mic, color: Colors.white),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.teal),
                        )
                      ],
                    ))
              ],
            )
          ],
        ));
  }
}
