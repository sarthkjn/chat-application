import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  final List<String> file;
  Story({this.file});
  static const storyRoute = 'Story';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        titleSpacing: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              radius: 20.0,
              backgroundImage: AssetImage(
                file[1],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  file[0],
                ),
                Text(
                  file[2],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Image.asset(
          file[1],
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
