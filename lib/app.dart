import 'package:chatApp/screens/pages.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'chatApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Color(0xFFFEF9EB),
      ),
      onGenerateRoute: routes,
    );
  }

  Route routes(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) {
        switch (settings.name) {
          case '/':
            {
              return HomeScreen();
            }
          case ChatScreen.chatScreenRoute:
            {
              return ChatScreen(user: settings.arguments);
            }
          default:
            {
              return HomeScreen();
            }
        }
      },
    );
  }
}
