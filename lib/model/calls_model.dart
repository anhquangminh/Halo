class CallModel {
  final String name;
  final String day;
  final String time;
  final String profileImageUrl;
  final String callType;
  final String callSource;

  CallModel(
      {this.name,
      this.day,
      this.time,
      this.profileImageUrl,
      this.callType,
      this.callSource});
}

List<CallModel> callMockData = [
  new CallModel(
      name: "Quang Minh",
      day: "Today",
      time: "2:08 PM",
      profileImageUrl:
          "https://scontent.fhan5-6.fna.fbcdn.net/v/t1.0-9/p720x720/73084142_1336321256539082_5838186321473961984_o.jpg?_nc_cat=105&_nc_oc=AQk-e0NnH3QHJvPi84Qugfz98v7JOZmbAwi_AAGVRLKio6rJXRVkseymMJq5MWw-CvthlIWmaF7Drvhu3lgy1cQP&_nc_ht=scontent.fhan5-6.fna&oh=b1026e6ff1c7f4a2333e42277f6d112a&oe=5E4DAEFC",
      callType: "Incoming",
      callSource: "video"),
  new CallModel(
      name: "Abhishek",
      day: "Yesterday",
      time: "8:12 AM",
      profileImageUrl:
          "https://scontent.fhan5-5.fna.fbcdn.net/v/t1.0-9/75323286_1344866712351203_525008147903938560_n.jpg?_nc_cat=101&_nc_oc=AQk1S-UT4Lo3vojOJ2bLxa36N7HFLo4LtUvdayO_VlcKgZbtO-ZlHbScyF0q2XJz4Qk&_nc_ht=scontent.fhan5-5.fna&oh=80dc6afde326aa5f5d41b647774d9f42&oe=5E4C7755",
      callType: "Outgoing",
      callSource: "voice"),
  new CallModel(
      name: "John",
      day: "December 25",
      time: "9:45 PM",
      profileImageUrl:
          "https://scontent.fhan5-1.fna.fbcdn.net/v/t1.0-9/s960x960/78564254_1357123051125569_5892698548905967616_o.jpg?_nc_cat=109&_nc_oc=AQkBN2HNfwF-JkS1yT1JcAuYP3wDeE5s3eDZTYN64O_QLXWCIBrKiLUh32qGR5hIn3Q&_nc_ht=scontent.fhan5-1.fna&oh=885a03fe83ab1b5d6b44590ed50d1e0e&oe=5E81B2A7",
      callType: "Outgoing",
      callSource: "video"),
  new CallModel(
      name: "Abhishek",
      day: "Yesterday",
      time: "8:12 AM",
      profileImageUrl:
          "https://scontent.fhan5-6.fna.fbcdn.net/v/t1.0-9/p720x720/73084142_1336321256539082_5838186321473961984_o.jpg?_nc_cat=105&_nc_oc=AQk-e0NnH3QHJvPi84Qugfz98v7JOZmbAwi_AAGVRLKio6rJXRVkseymMJq5MWw-CvthlIWmaF7Drvhu3lgy1cQP&_nc_ht=scontent.fhan5-6.fna&oh=b1026e6ff1c7f4a2333e42277f6d112a&oe=5E4DAEFC",
      callType: "Incoming",
      callSource: "voice"),
  new CallModel(
      name: "Quang Minh",
      day: "Today",
      time: "2:08 PM",
      profileImageUrl:
      "https://scontent.fhan5-6.fna.fbcdn.net/v/t1.0-9/p720x720/73084142_1336321256539082_5838186321473961984_o.jpg?_nc_cat=105&_nc_oc=AQk-e0NnH3QHJvPi84Qugfz98v7JOZmbAwi_AAGVRLKio6rJXRVkseymMJq5MWw-CvthlIWmaF7Drvhu3lgy1cQP&_nc_ht=scontent.fhan5-6.fna&oh=b1026e6ff1c7f4a2333e42277f6d112a&oe=5E4DAEFC",
      callType: "Incoming",
      callSource: "video"),
  new CallModel(
      name: "Abhishek",
      day: "Yesterday",
      time: "8:12 AM",
      profileImageUrl:
      "https://scontent.fhan5-5.fna.fbcdn.net/v/t1.0-9/75323286_1344866712351203_525008147903938560_n.jpg?_nc_cat=101&_nc_oc=AQk1S-UT4Lo3vojOJ2bLxa36N7HFLo4LtUvdayO_VlcKgZbtO-ZlHbScyF0q2XJz4Qk&_nc_ht=scontent.fhan5-5.fna&oh=80dc6afde326aa5f5d41b647774d9f42&oe=5E4C7755",
      callType: "Outgoing",
      callSource: "voice"),
  new CallModel(
      name: "John",
      day: "December 25",
      time: "9:45 PM",
      profileImageUrl:
      "https://scontent.fhan5-1.fna.fbcdn.net/v/t1.0-9/s960x960/78564254_1357123051125569_5892698548905967616_o.jpg?_nc_cat=109&_nc_oc=AQkBN2HNfwF-JkS1yT1JcAuYP3wDeE5s3eDZTYN64O_QLXWCIBrKiLUh32qGR5hIn3Q&_nc_ht=scontent.fhan5-1.fna&oh=885a03fe83ab1b5d6b44590ed50d1e0e&oe=5E81B2A7",
      callType: "Outgoing",
      callSource: "video"),
  new CallModel(
      name: "Abhishek",
      day: "Yesterday",
      time: "8:12 AM",
      profileImageUrl:
      "https://scontent.fhan5-6.fna.fbcdn.net/v/t1.0-9/p720x720/73084142_1336321256539082_5838186321473961984_o.jpg?_nc_cat=105&_nc_oc=AQk-e0NnH3QHJvPi84Qugfz98v7JOZmbAwi_AAGVRLKio6rJXRVkseymMJq5MWw-CvthlIWmaF7Drvhu3lgy1cQP&_nc_ht=scontent.fhan5-6.fna&oh=b1026e6ff1c7f4a2333e42277f6d112a&oe=5E4DAEFC",
      callType: "Incoming",
      callSource: "voice"),
  new CallModel(
      name: "Quang Minh",
      day: "Today",
      time: "2:08 PM",
      profileImageUrl:
      "https://scontent.fhan5-6.fna.fbcdn.net/v/t1.0-9/p720x720/73084142_1336321256539082_5838186321473961984_o.jpg?_nc_cat=105&_nc_oc=AQk-e0NnH3QHJvPi84Qugfz98v7JOZmbAwi_AAGVRLKio6rJXRVkseymMJq5MWw-CvthlIWmaF7Drvhu3lgy1cQP&_nc_ht=scontent.fhan5-6.fna&oh=b1026e6ff1c7f4a2333e42277f6d112a&oe=5E4DAEFC",
      callType: "Incoming",
      callSource: "video"),
  new CallModel(
      name: "Abhishek",
      day: "Yesterday",
      time: "8:12 AM",
      profileImageUrl:
      "https://scontent.fhan5-5.fna.fbcdn.net/v/t1.0-9/75323286_1344866712351203_525008147903938560_n.jpg?_nc_cat=101&_nc_oc=AQk1S-UT4Lo3vojOJ2bLxa36N7HFLo4LtUvdayO_VlcKgZbtO-ZlHbScyF0q2XJz4Qk&_nc_ht=scontent.fhan5-5.fna&oh=80dc6afde326aa5f5d41b647774d9f42&oe=5E4C7755",
      callType: "Outgoing",
      callSource: "voice"),
  new CallModel(
      name: "John",
      day: "December 25",
      time: "9:45 PM",
      profileImageUrl:
      "https://scontent.fhan5-1.fna.fbcdn.net/v/t1.0-9/s960x960/78564254_1357123051125569_5892698548905967616_o.jpg?_nc_cat=109&_nc_oc=AQkBN2HNfwF-JkS1yT1JcAuYP3wDeE5s3eDZTYN64O_QLXWCIBrKiLUh32qGR5hIn3Q&_nc_ht=scontent.fhan5-1.fna&oh=885a03fe83ab1b5d6b44590ed50d1e0e&oe=5E81B2A7",
      callType: "Outgoing",
      callSource: "video"),
  new CallModel(
      name: "Abhishek",
      day: "Yesterday",
      time: "8:12 AM",
      profileImageUrl:
      "https://scontent.fhan5-6.fna.fbcdn.net/v/t1.0-9/p720x720/73084142_1336321256539082_5838186321473961984_o.jpg?_nc_cat=105&_nc_oc=AQk-e0NnH3QHJvPi84Qugfz98v7JOZmbAwi_AAGVRLKio6rJXRVkseymMJq5MWw-CvthlIWmaF7Drvhu3lgy1cQP&_nc_ht=scontent.fhan5-6.fna&oh=b1026e6ff1c7f4a2333e42277f6d112a&oe=5E4DAEFC",
      callType: "Incoming",
      callSource: "voice"),
  new CallModel(
      name: "Quang Minh",
      day: "Today",
      time: "2:08 PM",
      profileImageUrl:
      "https://scontent.fhan5-6.fna.fbcdn.net/v/t1.0-9/p720x720/73084142_1336321256539082_5838186321473961984_o.jpg?_nc_cat=105&_nc_oc=AQk-e0NnH3QHJvPi84Qugfz98v7JOZmbAwi_AAGVRLKio6rJXRVkseymMJq5MWw-CvthlIWmaF7Drvhu3lgy1cQP&_nc_ht=scontent.fhan5-6.fna&oh=b1026e6ff1c7f4a2333e42277f6d112a&oe=5E4DAEFC",
      callType: "Incoming",
      callSource: "video"),
  new CallModel(
      name: "Abhishek",
      day: "Yesterday",
      time: "8:12 AM",
      profileImageUrl:
      "https://scontent.fhan5-5.fna.fbcdn.net/v/t1.0-9/75323286_1344866712351203_525008147903938560_n.jpg?_nc_cat=101&_nc_oc=AQk1S-UT4Lo3vojOJ2bLxa36N7HFLo4LtUvdayO_VlcKgZbtO-ZlHbScyF0q2XJz4Qk&_nc_ht=scontent.fhan5-5.fna&oh=80dc6afde326aa5f5d41b647774d9f42&oe=5E4C7755",
      callType: "Outgoing",
      callSource: "voice"),
  new CallModel(
      name: "John",
      day: "December 25",
      time: "9:45 PM",
      profileImageUrl:
      "https://scontent.fhan5-1.fna.fbcdn.net/v/t1.0-9/s960x960/78564254_1357123051125569_5892698548905967616_o.jpg?_nc_cat=109&_nc_oc=AQkBN2HNfwF-JkS1yT1JcAuYP3wDeE5s3eDZTYN64O_QLXWCIBrKiLUh32qGR5hIn3Q&_nc_ht=scontent.fhan5-1.fna&oh=885a03fe83ab1b5d6b44590ed50d1e0e&oe=5E81B2A7",
      callType: "Outgoing",
      callSource: "video"),
  new CallModel(
      name: "Abhishek",
      day: "Yesterday",
      time: "8:12 AM",
      profileImageUrl:
      "https://scontent.fhan5-6.fna.fbcdn.net/v/t1.0-9/p720x720/73084142_1336321256539082_5838186321473961984_o.jpg?_nc_cat=105&_nc_oc=AQk-e0NnH3QHJvPi84Qugfz98v7JOZmbAwi_AAGVRLKio6rJXRVkseymMJq5MWw-CvthlIWmaF7Drvhu3lgy1cQP&_nc_ht=scontent.fhan5-6.fna&oh=b1026e6ff1c7f4a2333e42277f6d112a&oe=5E4DAEFC",
      callType: "Incoming",
      callSource: "voice"),
];
