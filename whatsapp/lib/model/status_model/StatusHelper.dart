// ignore: file_names
import 'package:whatsapp/model/status_model/StatusItemModel.dart';

class StatusHelper {
  static var statusList = [
    StatusItemModel("Pranav Shrestha", "Yesterday, 2:22 PM",
        "https://images.pexels.com/photos/2446655/pexels-photo-2446655.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
    StatusItemModel("Raish Manandhar", "Today, 09:09 PM",
        "https://images.pexels.com/photos/1553783/pexels-photo-1553783.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
    StatusItemModel("Alisha Shrestha", "Yesterday, 11:09 PM",
        "https://images.pexels.com/photos/17371711/pexels-photo-17371711/free-photo-of-pretty-girl-with-a-yellow-flower-between-her-fingers-as-a-ring.jpeg?auto=compress&cs=tinysrgb&w=600"),
    StatusItemModel("Kakashi Hatake", "Today, 11:32 PM",
        "https://images.pexels.com/photos/17402544/pexels-photo-17402544/free-photo-of-portrait-of-smiling-brunette.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
  ];

  static StatusItemModel getStatusItem(int position) {
    return statusList[position];
  }

  static var itemCount = statusList.length;
}
