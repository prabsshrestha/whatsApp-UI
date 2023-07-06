import 'package:flutter/material.dart';
import 'package:whatsapp/model/call_model/CallItemModel.dart';
import 'package:whatsapp/model/call_model/call_helper.dart';

class CallsView extends StatelessWidget {
  const CallsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: CallHelper.itemCount,
      itemBuilder: (context, index) {
        // ignore: unused_local_variable
        CallItemModel callItemModel = CallHelper.getCallItem(index);
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(callItemModel.image),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(callItemModel.name,
                                    style:
                                        Theme.of(context).textTheme.headline6)
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 2),
                              child: Text(callItemModel.dateTime,
                                  style: Theme.of(context).textTheme.bodyText1),
                            )
                          ],
                        ),
                        Icon(
                          Icons.call,
                          color: Color(0xff009b0c),
                        )
                      ],
                    ),
                  ))
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
