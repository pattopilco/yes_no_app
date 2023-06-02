import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helpers/get_yes_no_answer.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollControler = ScrollController();
  final getTesNoAnswer = GetYesNoAnswer();

  List<Message> messageList = [
    Message(text: 'Saludo', fromWho: FromWho.mine),
    Message(text: 'Saludo 2', fromWho: FromWho.mine)
  ];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;
    final newMessage = Message(text: text, fromWho: FromWho.mine);
    messageList.add(newMessage);

    if (text.endsWith('?')) {
      herReply();
    }
    // Notifica los cambios a todos los que están escuchando
    notifyListeners();
  }

  Future<void> herReply() async {
    final herMessage = await getTesNoAnswer.getAnswer();
    messageList.add(herMessage);
    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> moveScrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));

    chatScrollControler.animateTo(chatScrollControler.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300), curve: Curves.easeOut);
  }
}
