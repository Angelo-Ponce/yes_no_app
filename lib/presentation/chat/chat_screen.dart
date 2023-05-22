import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://f.vividscreen.info/soft/a6f7c99fffd19839483349ee99762111/Emma-Stone-As-Gwen-Stacy-128x128.jpg'),
          ),
        ),
        title: const Text('Mi amor ❤️'),
        // centerTitle: true,
      ),
    );
  }
}