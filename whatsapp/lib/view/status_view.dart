import 'package:flutter/material.dart';
import 'package:whatsapp/model/status_model/StatusHelper.dart';

import 'package:whatsapp/model/status_model/StatusItemModel.dart';

class StatusView extends StatefulWidget {
  const StatusView({super.key});

  @override
  State<StatusView> createState() => _StatusViewState();
}

class _StatusViewState extends State<StatusView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: StatusHelper.itemCount,
      itemBuilder: ((context, position) {
        // ignore: unused_local_variable
        StatusItemModel statusItemModel = StatusHelper.getStatusItem(position);
        if (position == 0) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 5, left: 20),
                  child: Text('Recent Update',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(fontSize: 18))),
              Divider(),
              ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.green, width: 2)),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(statusItemModel.image),
                  ),
                ),
                title: Text(statusItemModel.name,
                    style: Theme.of(context).textTheme.headline6),
                subtitle: Text(
                    statusItemModel.name + " " + statusItemModel.dateTime,
                    style: Theme.of(context).textTheme.bodyText1),
              )
            ],
          );
        } else {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 5, left: 20),
                  child: Text('Recent Viewed',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(fontSize: 18))),
              Divider(),
              ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.green, width: 2)),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(statusItemModel.image),
                  ),
                ),
                title: Text(statusItemModel.name,
                    style: Theme.of(context).textTheme.headline6),
                subtitle: Text(
                    statusItemModel.name + " " + statusItemModel.dateTime,
                    style: Theme.of(context).textTheme.bodyText1),
              )
            ],
          );
        }
      }),
    );
  }
}
