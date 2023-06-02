import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messageList = [
    Message(text: 'Saludo', fromWho: FromWho.mine),
    Message(text: 'Saludo 2', fromWho: FromWho.mine)
  ];

  Future<void> sendMessage(String text) async {
    final newMessage = Message(text: text, fromWho: FromWho.mine);
    messageList.add(newMessage);
    // Notifica los cambios a todos los que están escuchando
    notifyListeners();
  }
}
