import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> message = [
    Message(text: 'Saludo', fromWho: FromWho.mine),
    Message(text: 'Saludo 2', fromWho: FromWho.mine)
  ];

  Future<void> sendMessage(String text) async {}
}
