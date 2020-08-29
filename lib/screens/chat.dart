import 'package:flutter/material.dart';
import 'package:chatApp/models/message.dart';
import 'package:chatApp/models/user.dart';

class ChatScreen extends StatefulWidget {
  static const chatScreenRoute = 'ChatScreen';
  final User user;

  ChatScreen({this.user});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  _buildMessage(Message message, bool isMe) {
    final Container msg = Container(
      margin: isMe
          ? EdgeInsets.only(
              top: 8.0,
              bottom: 8.0,
              left: 80.0,
              right: 10,
            )
          : EdgeInsets.only(
              top: 8.0,
              bottom: 8.0,
              left: 10,
            ),
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
      width: MediaQuery.of(context).size.width * 0.75,
      decoration: BoxDecoration(
        color: isMe ? Color(0xffdbfac6) : Colors.grey[100],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            message.time,
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 5.0),
          Text(
            message.text,
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
    if (isMe) {
      return msg;
    }
    return Row(
      children: <Widget>[
        msg,
      ],
    );
  }

  _buildMessageComposer() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.white,
      ),
      height: 70.0,
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.insert_emoticon),
            iconSize: 25.0,
            color: Colors.grey,
            onPressed: () {},
          ),
          Expanded(
            child: TextField(
              textCapitalization: TextCapitalization.sentences,
              onChanged: (value) {},
              decoration: InputDecoration.collapsed(
                hintText: 'Send a message...',
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xff075E54),
              shape: BoxShape.circle,
            ),
            padding: EdgeInsets.all(2),
            child: IconButton(
              icon: Icon(Icons.send),
              iconSize: 25.0,
              color: Colors.white,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            }),
        backgroundColor: Color(0xff075E54),
        titleSpacing: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              radius: 20.0,
              backgroundImage: AssetImage(
                widget.user.imageUrl,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            widget.user.isTyping == true
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.user.name,
                      ),
                      Text(
                        'typing...',
                        style: TextStyle(
                          color: Colors.grey[200],
                          fontSize: 10,
                        ),
                      )
                    ],
                  )
                : Text(
                    widget.user.name,
                  ),
          ],
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.videocam), onPressed: () {}),
          IconButton(icon: Icon(Icons.call), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
      body: Stack(
        children: <Widget>[
          ListView.builder(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            reverse: true,
            itemCount: messages.length,
            padding: EdgeInsets.only(bottom: 70),
            itemBuilder: (BuildContext context, int index) {
              final Message message = messages[index];
              final bool isMe = message.sender.id == currentUser.id;
              return _buildMessage(message, isMe);
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              _buildMessageComposer(),
            ],
          )
        ],
      ),
    );
  }
}
