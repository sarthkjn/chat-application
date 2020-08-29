import 'package:chatApp/models/user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread,
  });
}

// current user
final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: 'assets/images/greg.jpg',
);

// USERS
final User greg = User(
  id: 1,
  name: 'Greg',
  imageUrl: 'assets/images/greg.jpg',
);
final User vatsal = User(
  id: 2,
  name: 'Vatsal',
  imageUrl: 'assets/images/james.jpg',
);
final User roy = User(
  id: 3,
  name: 'Roy',
  imageUrl: 'assets/images/john.jpg',
);
final User sundar = User(
  id: 4,
  name: 'Sundar Pichai',
  imageUrl: 'assets/images/sundar.jpg',
);
final User mukesh = User(
  id: 5,
  name: 'Mukesh Ambani',
  imageUrl: 'assets/images/mukesh.jpg',
);
final User sophia = User(
  id: 6,
  name: 'Sophia',
  imageUrl: 'assets/images/sophia.jpg',
);
final User bill = User(
  id: 7,
  name: 'Bill Gates',
  imageUrl: 'assets/images/bill.jpg',
);

// FAVORITE CONTACTS
List<User> favorites = [mukesh, bill, sundar, roy, greg];

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: vatsal,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: sundar,
    time: '4:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: roy,
    time: '3:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: sophia,
    time: '2:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: bill,
    time: '1:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: mukesh,
    time: '12:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: greg,
    time: '11:30 AM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: vatsal,
    time: '5:30 PM',
    text: 'Yes!!',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'Did you learn Data Structures and Algorithms as well?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: vatsal,
    time: '3:45 PM',
    text: 'It is very interesting',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: vatsal,
    time: '3:15 PM',
    text: 'C++ programming',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Nice! Which one?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: vatsal,
    time: '2:00 PM',
    text: 'I finally learned a programming language.',
    isLiked: false,
    unread: true,
  ),
];
