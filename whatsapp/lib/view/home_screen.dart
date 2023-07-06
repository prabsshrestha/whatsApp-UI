import 'package:flutter/material.dart';
import 'package:whatsapp/view/calls_view.dart';
import 'package:whatsapp/view/chatlist_view.dart';
import 'package:whatsapp/view/setting.dart';

import 'package:whatsapp/view/status_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  var fabIcon = Icons.message;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    tabController = TabController(length: 4, vsync: this)
      ..addListener(() {
        setState(() {
          switch (tabController.index) {
            case 0:
              fabIcon = Icons.camera_alt_outlined;
              break;
            case 1:
              fabIcon = Icons.chat;
              break;
            case 2:
              fabIcon = Icons.camera_alt_outlined;
              break;
            case 3:
              fabIcon = Icons.message;
              break;
          }
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const Text(
            'WhatsApp',
            style: TextStyle(fontSize: 20),
          ),
          actions: <Widget>[
            Icon(Icons.camera_alt_outlined),
            SizedBox(width: 25),
            Icon(Icons.search),
            SizedBox(width: 25),
            PopupMenuButton(
                enabled: true,
                icon: Icon(Icons.more_vert_sharp),
                itemBuilder: (context) => [
                      const PopupMenuItem(child: Text('New Group')),
                      const PopupMenuItem(child: Text('Linked Group')),
                      const PopupMenuItem(child: Text('New Broadcast')),
                      const PopupMenuItem(child: Text('Starred messages')),
                      PopupMenuItem(
                          child: InkWell(
                              onTap: () {
                                Navigator.of(context);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SettingScreen()));
                              },
                              child: Text('Setting'))),
                    ])
          ],
          bottom: const TabBar(tabs: [
            Tab(child: Icon(Icons.people_alt_sharp)),
            Tab(child: Text('Chats')),
            Tab(child: Text('Status')),
            Tab(child: Text('Calls')),
          ]),
        ),
        body: TabBarView(children: [
          Padding(
            padding: EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/4132538/pexels-photo-4132538.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                ),
                SizedBox(height: 30),
                Text(
                  'Introducing Communities',
                  style: TextStyle(fontSize: 25),
                ),
                SizedBox(height: 15),
                Text(
                  'Easily organise your related groups and send \n announcements. Now, your communities, like \n neighbourhoods or schools, can have their own \n space.',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30),
                InkWell(
                  child: Container(
                    height: 50,
                    width: 400,
                    decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(25)),
                    child: const Center(
                      child: Text(
                        'Start your community',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Regular',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          // const Icon(Icons.camera_alt_outlined),
          const ChatlistView(),
          // ListView.builder(
          //     itemCount: 20,
          //     itemBuilder: ((context, index) {
          //       return const ListTile(
          //         leading: CircleAvatar(
          //           backgroundImage: NetworkImage(
          //               'https://images.pexels.com/photos/5384445/pexels-photo-5384445.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
          //         ),
          //         title: Text('Pranav Shrestha'),
          //         subtitle: Text('Goodnight mate'),
          //         trailing: Text('10:38 pm'),
          // );
          // })),

          const StatusView(),
          // ListView.builder(
          //     itemCount: 20,
          //     itemBuilder: ((context, index) {
          //       if (index == 0) {
          //         return Padding(
          //           padding: const EdgeInsets.symmetric(vertical: 10),
          //           child: Column(
          //             mainAxisAlignment: MainAxisAlignment.start,
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: [
          //               Text('New updates'),
          //               ListTile(
          //                 leading: Container(
          //                   decoration: BoxDecoration(
          //                       shape: BoxShape.circle,
          //                       border: Border.all(
          //                         color: Colors.green,
          //                         width: 3,
          //                       )),
          //                   child: CircleAvatar(
          //                     backgroundImage: NetworkImage(
          //                         'https://images.pexels.com/photos/5384445/pexels-photo-5384445.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
          //                   ),
          //                 ),
          //                 title: Text('Pranav Shrestha'),
          //                 subtitle: Text('5:25 pm'),
          //               ),
          //             ],
          //           ),
          //         );
          //       } else {
          //         return ListTile(
          //           leading: Container(
          //             decoration: BoxDecoration(
          //                 shape: BoxShape.circle,
          //                 border: Border.all(
          //                   color: Colors.green,
          //                   width: 3,
          //                 )),
          //             child: CircleAvatar(
          //               backgroundImage: NetworkImage(
          //                   'https://images.pexels.com/photos/5384445/pexels-photo-5384445.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
          //             ),
          //           ),
          //           title: Text('Pranav Shrestha'),
          //           subtitle: Text('5:25 pm'),
          //         );
          //       }
          //     })),

          CallsView(),
          // ListView.builder(
          //     itemCount: 20,
          //     itemBuilder: ((context, index) {
          //       return ListTile(
          //         leading: CircleAvatar(
          //           backgroundImage: NetworkImage(
          //               'https://images.pexels.com/photos/5384445/pexels-photo-5384445.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
          //         ),
          //         title: Text('Pranav Shrestha'),
          //         subtitle: Text(index / 2 == 0
          //             ? 'You missed audio call'
          //             : 'You have missed video call'),
          //         trailing:
          //             Icon((index / 2 == 0) ? Icons.call : Icons.video_chat),
          //       );
          //     })),
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(fabIcon),
        ),
      ),
    );
  }
}
