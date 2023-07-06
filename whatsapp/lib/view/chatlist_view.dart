import 'package:flutter/material.dart';
import 'package:whatsapp/model/chat_model/ChatHelper.dart';

import 'package:whatsapp/model/chat_model/ChatItemModel.dart';

import 'package:whatsapp/constand/constants.dart';
import 'package:whatsapp/view/chat_screen.dart';

class ChatlistView extends StatelessWidget {
  const ChatlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: ChatHelper.itemCount,
        itemBuilder: ((context, position) {
          // ignore: unused_local_variable
          ChatItemModel chatItem = ChatHelper.getChatItem(position);
          return Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChatScreen(
                                image: chatItem.image,
                                name: chatItem.name,
                              )));
                },
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 28,
                    backgroundImage: NetworkImage(chatItem.image.toString()),
                  ),
                  title: Text(
                    chatItem.name,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  subtitle: Row(children: [
                    Icon(
                      position % 2 == 0 ? Icons.done : Icons.done_all,
                      color: position % 2 == 0 ? Colors.grey : Colors.blue,
                    ),
                    SizedBox(width: 5),
                    Text(
                      chatItem.mostRecentMessage,
                      style: Theme.of(context).textTheme.bodyText1,
                    )
                  ]),
                  trailing: Padding(
                    padding: EdgeInsets.only(top: 2),
                    child: Text(chatItem.messageDate,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(fontFamily: Regular)),
                  ),
                ),
              )
            ],
          );
        }));
  }
}
