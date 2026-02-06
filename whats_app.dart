import 'package:flutter/material.dart';

class WhatsApp extends StatelessWidget {
  const WhatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffECE5DD),
      appBar: AppBar(
        backgroundColor: const Color(0xff075E54),
        title: const Text('WhatsApp'),
        elevation: 0,
        actions: [
          Icon(Icons.search, color: Colors.grey),
          SizedBox(width: 17),
          Icon(Icons.more_vert, color: Colors.grey),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Color.fromARGB(255, 255, 255, 255),
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  Item(text: 'All'),
                  Item(text: 'Unread'),
                  Item(text: 'Groups'),
                  Item(text: 'Friends'),
                  Item(text: 'Collage'),
                  Item(text: 'Family'),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) {
                return ChatItem();
              },
            ),
          ),
        ],
      ),
      floatingActionButton: Container(
        width: 56,
        height: 56,
        decoration: BoxDecoration(
          color: const Color(0xff25D366),
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Icon(Icons.chat, color: Colors.white),
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  const ChatItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),

      leading: CircleAvatar(
        radius: 26,
        backgroundImage: AssetImage('assets/images/image2.webp'),
      ),

      title: Text(
        'Mohamed',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),

      subtitle: Text(
        'السلام عليكم، ازيك يا هندسة؟',
        style: TextStyle(fontSize: 14, color: Colors.grey),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),

      trailing: Text(
        '10:30 PM',
        style: TextStyle(fontSize: 12, color: Colors.grey),
      ),
    );
  }
}

class Item extends StatelessWidget {
  final String text;
  const Item({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: Text(text),
    );
  }
}
