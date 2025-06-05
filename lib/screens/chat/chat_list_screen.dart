import 'package:flutter/material.dart';

import 'chat_screen.dart';

class ChatListScreen extends StatelessWidget {
  static String routeName = '/chats';

  const ChatListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final chats = ['Alice', 'Bob', 'Charlie'];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chats'),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          final user = chats[index];
          return ListTile(
            leading: const CircleAvatar(child: Icon(Icons.person)),
            title: Text(user),
            onTap: () {
              Navigator.pushNamed(
                context,
                ChatScreen.routeName,
                arguments: user,
              );
            },
          );
        },
      ),
    );
  }
}
