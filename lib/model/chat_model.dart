class ChatModel {
  final String name;
  final String message;
  final String time;
  final String imageUrl;

  ChatModel({this.name, this.message, this.time, this.imageUrl});
}

List<ChatModel> ChatMockData = [
  new ChatModel(
      name: "Quang Minh",
      message: "Where are you ?",
      time: "12:30 AM",
      imageUrl:
          "https://scontent.fhan5-6.fna.fbcdn.net/v/t1.0-9/p720x720/73084142_1336321256539082_5838186321473961984_o.jpg?_nc_cat=105&_nc_oc=AQk-e0NnH3QHJvPi84Qugfz98v7JOZmbAwi_AAGVRLKio6rJXRVkseymMJq5MWw-CvthlIWmaF7Drvhu3lgy1cQP&_nc_ht=scontent.fhan5-6.fna&oh=b1026e6ff1c7f4a2333e42277f6d112a&oe=5E4DAEFC"),
  new ChatModel(
      name: "Thắng Nguyễn",
      message: "Hello there, how are you",
      time: "12:30 AM",
      imageUrl:
          "https://scontent.fhan5-5.fna.fbcdn.net/v/t1.0-9/75323286_1344866712351203_525008147903938560_n.jpg?_nc_cat=101&_nc_oc=AQk1S-UT4Lo3vojOJ2bLxa36N7HFLo4LtUvdayO_VlcKgZbtO-ZlHbScyF0q2XJz4Qk&_nc_ht=scontent.fhan5-5.fna&oh=80dc6afde326aa5f5d41b647774d9f42&oe=5E4C7755"),
  new ChatModel(
    name: "Catergory",
    message: "can we meet tomorrow?",
    time: "08:30 PM",
    imageUrl:
        "https://scontent.fhan5-7.fna.fbcdn.net/v/t1.0-9/s960x960/75253017_1357121771125697_3738855883996659712_o.jpg?_nc_cat=100&_nc_oc=AQk8sO3TP6Ditpf2WRDw4gxQdKt9sX-f6toxMc5hg9K5bRDC38tX0uYOSyUVRMhGD0w&_nc_ht=scontent.fhan5-7.fna&oh=c39cdc1d686227757d4cc878c0860ec6&oe=5E890EB1",
  ),
  new ChatModel(
    name: "Sindy",
    message: "Will call today",
    time: "02:30 AM",
    imageUrl:
        "https://scontent.fhan5-7.fna.fbcdn.net/v/t1.0-0/p206x206/72782336_1330483290456212_8545248755820003328_n.jpg?_nc_cat=100&_nc_oc=AQlwtSG4I0K1j-P8wTNy8JKIiWtJrClVNEVZwH0dvwvyZyBvt1IxKpDqOG47Xw_b5sw&_nc_ht=scontent.fhan5-7.fna&oh=8cea8cbe154df9c9cccf45b4e072d517&oe=5E435C59",
  ),
  new ChatModel(
      name: "Candy",
      message: "Send me all the details",
      time: "05:08 AM",
      imageUrl:
          "https://scontent.fhan5-1.fna.fbcdn.net/v/t1.0-9/s960x960/78564254_1357123051125569_5892698548905967616_o.jpg?_nc_cat=109&_nc_oc=AQkBN2HNfwF-JkS1yT1JcAuYP3wDeE5s3eDZTYN64O_QLXWCIBrKiLUh32qGR5hIn3Q&_nc_ht=scontent.fhan5-1.fna&oh=885a03fe83ab1b5d6b44590ed50d1e0e&oe=5E81B2A7"),
  new ChatModel(
      name: "Quang Minh",
      message: "Where are you ?",
      time: "12:30 AM",
      imageUrl:
          "https://scontent.fhan5-6.fna.fbcdn.net/v/t1.0-9/p720x720/73084142_1336321256539082_5838186321473961984_o.jpg?_nc_cat=105&_nc_oc=AQk-e0NnH3QHJvPi84Qugfz98v7JOZmbAwi_AAGVRLKio6rJXRVkseymMJq5MWw-CvthlIWmaF7Drvhu3lgy1cQP&_nc_ht=scontent.fhan5-6.fna&oh=b1026e6ff1c7f4a2333e42277f6d112a&oe=5E4DAEFC"),
  new ChatModel(
      name: "Thắng Nguyễn",
      message: "Hello there, how are you",
      time: "12:30 AM",
      imageUrl:
          "https://scontent.fhan5-5.fna.fbcdn.net/v/t1.0-9/75323286_1344866712351203_525008147903938560_n.jpg?_nc_cat=101&_nc_oc=AQk1S-UT4Lo3vojOJ2bLxa36N7HFLo4LtUvdayO_VlcKgZbtO-ZlHbScyF0q2XJz4Qk&_nc_ht=scontent.fhan5-5.fna&oh=80dc6afde326aa5f5d41b647774d9f42&oe=5E4C7755"),
  new ChatModel(
    name: "Cat",
    message: "can we meet tomorrow?",
    time: "08:30 PM",
    imageUrl:
        "https://scontent.fhan5-7.fna.fbcdn.net/v/t1.0-9/s960x960/75253017_1357121771125697_3738855883996659712_o.jpg?_nc_cat=100&_nc_oc=AQk8sO3TP6Ditpf2WRDw4gxQdKt9sX-f6toxMc5hg9K5bRDC38tX0uYOSyUVRMhGD0w&_nc_ht=scontent.fhan5-7.fna&oh=c39cdc1d686227757d4cc878c0860ec6&oe=5E890EB1",
  ),
  new ChatModel(
    name: "Sid",
    message: "Will call today",
    time: "02:30 AM",
    imageUrl:
        "https://scontent.fhan5-7.fna.fbcdn.net/v/t1.0-0/p206x206/72782336_1330483290456212_8545248755820003328_n.jpg?_nc_cat=100&_nc_oc=AQlwtSG4I0K1j-P8wTNy8JKIiWtJrClVNEVZwH0dvwvyZyBvt1IxKpDqOG47Xw_b5sw&_nc_ht=scontent.fhan5-7.fna&oh=8cea8cbe154df9c9cccf45b4e072d517&oe=5E435C59",
  ),
  new ChatModel(
      name: "Candy",
      message: "Send me all the details",
      time: "05:08 AM",
      imageUrl:
          "https://scontent.fhan5-1.fna.fbcdn.net/v/t1.0-9/s960x960/78564254_1357123051125569_5892698548905967616_o.jpg?_nc_cat=109&_nc_oc=AQkBN2HNfwF-JkS1yT1JcAuYP3wDeE5s3eDZTYN64O_QLXWCIBrKiLUh32qGR5hIn3Q&_nc_ht=scontent.fhan5-1.fna&oh=885a03fe83ab1b5d6b44590ed50d1e0e&oe=5E81B2A7"),
  new ChatModel(
      name: "Quang Minh",
      message: "Where are you ?",
      time: "12:30 AM",
      imageUrl:
          "https://scontent.fhan5-6.fna.fbcdn.net/v/t1.0-9/p720x720/73084142_1336321256539082_5838186321473961984_o.jpg?_nc_cat=105&_nc_oc=AQk-e0NnH3QHJvPi84Qugfz98v7JOZmbAwi_AAGVRLKio6rJXRVkseymMJq5MWw-CvthlIWmaF7Drvhu3lgy1cQP&_nc_ht=scontent.fhan5-6.fna&oh=b1026e6ff1c7f4a2333e42277f6d112a&oe=5E4DAEFC"),
  new ChatModel(
      name: "Thắng Nguyễn",
      message: "Hello there, how are you",
      time: "12:30 AM",
      imageUrl:
          "https://scontent.fhan5-5.fna.fbcdn.net/v/t1.0-9/75323286_1344866712351203_525008147903938560_n.jpg?_nc_cat=101&_nc_oc=AQk1S-UT4Lo3vojOJ2bLxa36N7HFLo4LtUvdayO_VlcKgZbtO-ZlHbScyF0q2XJz4Qk&_nc_ht=scontent.fhan5-5.fna&oh=80dc6afde326aa5f5d41b647774d9f42&oe=5E4C7755"),
  new ChatModel(
    name: "Cat",
    message: "can we meet tomorrow?",
    time: "08:30 PM",
    imageUrl:
        "https://scontent.fhan5-7.fna.fbcdn.net/v/t1.0-9/s960x960/75253017_1357121771125697_3738855883996659712_o.jpg?_nc_cat=100&_nc_oc=AQk8sO3TP6Ditpf2WRDw4gxQdKt9sX-f6toxMc5hg9K5bRDC38tX0uYOSyUVRMhGD0w&_nc_ht=scontent.fhan5-7.fna&oh=c39cdc1d686227757d4cc878c0860ec6&oe=5E890EB1",
  ),
  new ChatModel(
    name: "Sid",
    message: "Will call today",
    time: "02:30 AM",
    imageUrl:
        "https://scontent.fhan5-7.fna.fbcdn.net/v/t1.0-0/p206x206/72782336_1330483290456212_8545248755820003328_n.jpg?_nc_cat=100&_nc_oc=AQlwtSG4I0K1j-P8wTNy8JKIiWtJrClVNEVZwH0dvwvyZyBvt1IxKpDqOG47Xw_b5sw&_nc_ht=scontent.fhan5-7.fna&oh=8cea8cbe154df9c9cccf45b4e072d517&oe=5E435C59",
  ),
  new ChatModel(
      name: "Candy",
      message: "Send me all the details",
      time: "05:08 AM",
      imageUrl:
          "https://scontent.fhan5-1.fna.fbcdn.net/v/t1.0-9/s960x960/78564254_1357123051125569_5892698548905967616_o.jpg?_nc_cat=109&_nc_oc=AQkBN2HNfwF-JkS1yT1JcAuYP3wDeE5s3eDZTYN64O_QLXWCIBrKiLUh32qGR5hIn3Q&_nc_ht=scontent.fhan5-1.fna&oh=885a03fe83ab1b5d6b44590ed50d1e0e&oe=5E81B2A7"),
];
