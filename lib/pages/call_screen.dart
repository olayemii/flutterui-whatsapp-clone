import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/badge.dart';

class CallScreen extends StatelessWidget {
  final Map<String, Map> _iconTypes = {
    "missed": {"icon": Icons.call_missed, "color": Colors.red},
    "received": {"icon": Icons.call_received, "color": Colors.green},
    "called": {"icon": Icons.call_made, "color": Colors.blue}
  };
  final List<Map> calls = [
    {
      "profile_photo": "https://randomuser.me/api/portraits/women/20.jpg",
      "name": "Gabriella",
      "call_type": "missed",
      "call_times": 2,
      "call_date_time": "29/12/2019, 9:19 am",
      "video_call": true
    },
    {
      "profile_photo": "https://randomuser.me/api/portraits/men/20.jpg",
      "name": "Temitope Garuba",
      "call_type": "received",
      "call_times": 2,
      "call_date_time": "29/12/2019, 9:19 am",
    },
    {
      "profile_photo": "https://randomuser.me/api/portraits/men/25.jpg",
      "name": "Sumbo",
      "call_type": "called",
      "call_times": 2,
      "call_date_time": "29/12/2019, 9:19 am",
      "video_call": true
    }
  ];

  ListTile _getCallTile(Map data) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25.0,
        backgroundImage: NetworkImage(data["profile_photo"]),
      ),
      title: Padding(
          padding: EdgeInsets.symmetric(vertical: 5.0),
          child: Text(
            data["name"],
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Badge(
            size: 20.0,
            color: _iconTypes[data["call_type"]]["color"],
            icon: Icon(
              _iconTypes[data["call_type"]]["icon"],
              size: 16.0,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            data["call_date_time"],
            style: TextStyle(fontSize: 14.0),
          )
        ],
      ),
      trailing: Icon(data["video_call"] != null ? Icons.videocam : Icons.call),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 5.0),
        child: ListView.builder(
          itemCount: calls.length,
          itemBuilder: (BuildContext context, int index) {
            return _getCallTile(calls[index]);
          },
        ));
  }
}
