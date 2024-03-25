
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  final String userImages;
  final String userName;

  const ChatPage({super.key, required this.userImages, required this.userName});

  @override
  // ignore: library_private_types_in_public_api
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final List<String> _messages = [];
  // ignore: prefer_final_fields
  TextEditingController _textEditingController = TextEditingController();

  void _sendMessage(String message) {
    if (message.isNotEmpty) {
      setState(() {
        _messages.add(message);
      });
      _textEditingController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            
            CircleAvatar(
              backgroundImage: NetworkImage(widget.userImages),
              radius: 13,
                        ),
            const SizedBox(width: 8.0,),
            Text(widget.userName, style: const TextStyle(fontStyle: FontStyle.italic, fontSize: 15),),
          
          ],  
        ),
        actions: [
          IconButton(onPressed: () {} , icon: const Icon(Icons.video_call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.call))
        ],
        
        
      ),
      body: Column(
        children: [
        
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_messages[index]),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _textEditingController,
                    decoration: const InputDecoration(
                      hintText: 'Type a message...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {
                    _sendMessage(_textEditingController.text);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}