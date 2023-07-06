// ignore: file_names
import 'ChatItemModel.dart';

class ChatHelper {
  static var chatList = [
    ChatItemModel("Pranav Shrestha", "How r u doing man", "10:28 PM",
        "https://images.pexels.com/photos/2446655/pexels-photo-2446655.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
    ChatItemModel("Priyanka Tuladhar", "Hi, Priyanka ", " 10:28 AM",
        "https://images.pexels.com/photos/3775087/pexels-photo-3775087.jpeg?auto=compress&cs=tinysrgb&w=600"),
    ChatItemModel("Alisha Shrestha", "hey alu", "Today",
        "https://images.pexels.com/photos/17371711/pexels-photo-17371711/free-photo-of-pretty-girl-with-a-yellow-flower-between-her-fingers-as-a-ring.jpeg?auto=compress&cs=tinysrgb&w=600"),
    ChatItemModel("Raish Shrestha", "k cha raja ", "Wednesday",
        "https://images.pexels.com/photos/1553783/pexels-photo-1553783.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
    ChatItemModel("Kakashi Hatake", "Kakashi is best!! Yes sir", "16/01/2022",
        "https://images.pexels.com/photos/17402544/pexels-photo-17402544/free-photo-of-portrait-of-smiling-brunette.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
  ];

  static ChatItemModel getChatItem(int position) {
    return chatList[position];
  }

  static var itemCount = chatList.length;
}
