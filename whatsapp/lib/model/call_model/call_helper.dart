import 'CallItemModel.dart';

class CallHelper {
  static var callList = [
    CallItemModel("Pranav Shrestha", "Outgoing Today, 1:49 PM",
        "https://images.pexels.com/photos/2446655/pexels-photo-2446655.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
    CallItemModel("Raish Manandhar", "Incoming, 9:30 AM",
        "https://images.pexels.com/photos/1553783/pexels-photo-1553783.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
    CallItemModel("Alisha Shrestha", "Incoming, 10:30 PM",
        "https://images.pexels.com/photos/17371711/pexels-photo-17371711/free-photo-of-pretty-girl-with-a-yellow-flower-between-her-fingers-as-a-ring.jpeg?auto=compress&cs=tinysrgb&w=600"),
    CallItemModel("Alisha Shrestha", "Incoming, 9:30 PM",
        "https://images.pexels.com/photos/17371711/pexels-photo-17371711/free-photo-of-pretty-girl-with-a-yellow-flower-between-her-fingers-as-a-ring.jpeg?auto=compress&cs=tinysrgb&w=600"),
    CallItemModel("Alisha Shrestha", "Outgoing, 11:30 PM",
        "https://images.pexels.com/photos/17371711/pexels-photo-17371711/free-photo-of-pretty-girl-with-a-yellow-flower-between-her-fingers-as-a-ring.jpeg?auto=compress&cs=tinysrgb&w=600"),
    CallItemModel("Alisha Shrestha", "Incoming, 12:30 AM",
        "https://images.pexels.com/photos/17371711/pexels-photo-17371711/free-photo-of-pretty-girl-with-a-yellow-flower-between-her-fingers-as-a-ring.jpeg?auto=compress&cs=tinysrgb&w=600"),
    CallItemModel("Pranav Shrestha", "Outgoing Today, 4:49 PM",
        "https://images.pexels.com/photos/2446655/pexels-photo-2446655.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
    CallItemModel("Raish Manandhar", "Incoming, 9:30 AM",
        "https://images.pexels.com/photos/1553783/pexels-photo-1553783.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
    CallItemModel("Pranav Shrestha", "Outgoing Today, 4:49 PM",
        "https://images.pexels.com/photos/2446655/pexels-photo-2446655.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
    CallItemModel("Raish Manandhar", "Incoming, 3:30 AM",
        "https://images.pexels.com/photos/1553783/pexels-photo-1553783.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
    CallItemModel("Pranav Shrestha", "Outgoing Today, 8:49 PM",
        "https://images.pexels.com/photos/2446655/pexels-photo-2446655.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
    CallItemModel("Raish Manandhar", "Incoming, 9:30 PM",
        "https://images.pexels.com/photos/1553783/pexels-photo-1553783.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
  ];

  static CallItemModel getCallItem(int position) {
    return callList[position];
  }

  static var itemCount = callList.length;
}
