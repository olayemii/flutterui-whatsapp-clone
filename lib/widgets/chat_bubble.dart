import 'package:flutter/material.dart';

enum MESSAGE_TYPES { SENT, RECIEVED }

//
class ChatBubble extends StatelessWidget {
  final String message;
  final MESSAGE_TYPES messageType;
  ChatBubble({this.message, this.messageType});
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: messageType == MESSAGE_TYPES.RECIEVED
            ? Alignment.topLeft
            : Alignment.topRight,
        child: Card(
          color: messageType == MESSAGE_TYPES.RECIEVED
              ? Colors.white
              : Colors.green[100],
          child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.5),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Flexible(child: Text(message)),
                    SizedBox(
                      width: 5.0,
                    ),
                    Column(
                      children: <Widget>[
                        Text("9:00 pm",
                            style:
                                TextStyle(fontSize: 12.0, color: Colors.grey))
                      ],
                    )
                  ],
                ),
              )),
        ));
  }
}
