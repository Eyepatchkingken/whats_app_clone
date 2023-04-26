class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatar_url;

  ChatModel({this.name, this.message, this.time, this.avatar_url});
}

List<ChatModel> dummyData = [
  ChatModel (
    name: "Martis",
    message: "Three Thousand worlds and not a single worthy foe",
    time: "4:00 PM",
    avatar_url: "https://randomuser.me/api/portraits/med/men/75.jpg"
  ),
  ChatModel(
    name: "Clint",
    message: "Chivalry is dead, and I will revive it",
    time: "9:00 AM",
    avatar_url: "https://randomuser.me/api/portraits/med/men/74.jpg"
  ),
  ChatModel(
    name: "Lesley",
    message: "One shot, One Kill",
    time: "11:00 AM",
    avatar_url: "https://randomuser.me/api/portraits/med/women/75.jpg"
  ),
  ChatModel(
    name: "Lesley",
    message: "You can't run faster than my bullets",
    time: "6:00 PM",
    avatar_url: "https://randomuser.me/api/portraits/med/women/74.jpg"
  ),
];