import 'package:whatsapp/model/message_model/message_model.dart';

class MessageHelper {
  static var messageList = [
    MessageItemModel("John wick", "Hey :)", "10:10 PM", "msj"),
    MessageItemModel("Tom hardy", "Oh! Heyyy", "10:20 PM", "msj"),
    MessageItemModel("Tom hardy", "How was ur day? <3", "10:30 PM", "msj"),
    MessageItemModel(
        "Tom hardy", "Just having a boring day, Wbu? <3", "10:40 PM", "msj"),
    MessageItemModel(
        "John Alia",
        "https://cdn.pixabay.com/photo/2021/03/02/16/34/woman-6063087_960_720.jpg",
        " 10:42 AM",
        "image"),
    MessageItemModel(
        "Tom hardy", "ohoo u r having fun, moj cha hai ", "10:43 PM", "msj"),
    MessageItemModel(
        "Tom hardy",
        "yess, break liyera katai fresh vako is best feeling k <3",
        "10:45 PM",
        "msj"),
    MessageItemModel(
        "Ronaldo",
        "tyo ta ho yaar i also need a break k sab kam bata yaar",
        "10:46 PM",
        "msj"),
    MessageItemModel(
        "Ronaldo",
        "umm leu na kasto refresh huncha k, pakha aarko photo pathauxu",
        "10:46 PM",
        "msj"),
    MessageItemModel(
        "Ronaldo",
        "aah aba lina parla sab milayera ...send chito malai off janxu aba kam cha",
        "10:46 PM",
        "msj"),
    MessageItemModel(
        "Ema watson",
        "https://cdn.pixabay.com/photo/2021/03/02/16/34/woman-6063087_960_720.jpg",
        "10:48 PM",
        "image"),
    MessageItemModel(
        "Tom hardy", "ohoo sai dekheko xau yaar", "10:48 PM", "msj"),
    MessageItemModel(
        "Tom hardy",
        "https://cdn.pixabay.com/photo/2017/12/01/08/02/paint-2990357_960_720.jpg",
        "10:50 PM",
        "image"),
    MessageItemModel(
        "Tom hardy",
        "nicee yaar, enjoy gara masta break ma, la mah janxu hai kam cha tannai garna",
        "10:50 PM",
        "msj"),
    MessageItemModel(
        "Tom hardy",
        "aah garira nai xu ..huncha gara yar kam ani break ni leu ...aba mah ni sutxu hola thakexu",
        "10:50 PM",
        "msj"),
    MessageItemModel(
        "Tom hardy",
        "aah linxu mah milayera break ...okay suta goodnight <3",
        "10:51 AM",
        "msj"),
    MessageItemModel(
        "Tom hardy",
        "okay goodnight..bholi time milayera bolna parcha aba <3",
        "10:52 AM",
        "msj"),
    MessageItemModel(
        "Ronaldo", "huncha bholi bolaula goodnight <3", "10:55 PM", "msj"),
    MessageItemModel("Ronaldo", "Goodnight <3", "10:55 PM", "msj"),
  ];

  static MessageItemModel getCHatList(int position) {
    return messageList[position];
  }

  static var itemCount = messageList.length;
}
