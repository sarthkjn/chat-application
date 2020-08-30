import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class StatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Badge(
            badgeColor: Colors.green,
            position: BadgePosition(bottom: 0, right: 0),
            badgeContent: Icon(
              Icons.add,
              size: 15,
              color: Colors.white,
            ),
            child: AspectRatio(
              aspectRatio: 1,
              child: CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage('assets/images/bill.jpg'),
              ),
            ),
          ),
          title: Text('My Status',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              )),
          subtitle: Text('Tap to add status update'),
        ),
        label('Recent Updates', context),
        storyWidget(
          'Sophia',
          'assets/images/sophia.jpg',
          'Today, 12:13 PM',
          false,
        ),
        storyWidget(
          'Vatsal',
          'assets/images/james.jpg',
          'Yesterday, 01:13 PM',
          false,
        ),
        storyWidget(
          'Akul',
          'assets/images/greg.jpg',
          'Today, 08:13 PM',
          false,
        ),
        label('Viewed Updates', context),
        storyWidget(
          'Praneet',
          'assets/images/steven.jpg',
          'Today, 08:33 PM',
          true,
        ),
        storyWidget(
          'Somya',
          'assets/images/sam.jpg',
          'Today, 08:31 PM',
          true,
        ),
        storyWidget(
          'Olivia',
          'assets/images/olivia.jpg',
          'Today, 08:29 PM',
          true,
        ),
      ],
    );
  }

  label(String text, BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
      color: Colors.grey[300],
      width: MediaQuery.of(context).size.width,
      child: Text(text),
    );
  }

  storyWidget(
    String text,
    String image,
    String time,
    bool isViewed,
  ) {
    return ListTile(
      title: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Text(time),
      leading: AspectRatio(
        aspectRatio: 1,
        child: Container(
          padding: EdgeInsets.all(2),
          height: 80,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2.5,
              color: isViewed == true ? Colors.grey[400] : Colors.teal[400],
            ),
            shape: BoxShape.circle,
          ),
          child: CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
