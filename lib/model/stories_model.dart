class StoriesModel {
  final String name;
  final String day;
  final String time;
  final String storyImageUrl;
  final String profileImageUrl;
  bool storySeen;

  StoriesModel(
      {this.name,
      this.day,
      this.time,
      this.storyImageUrl,
      this.profileImageUrl,
      this.storySeen});
}

List<StoriesModel> storiesMockData = [
  new StoriesModel(
      name: "Quang Minh",
      day: "Today",
      time: "1:00 PM",
      storyImageUrl:
          "https://scontent.fhan5-6.fna.fbcdn.net/v/t1.0-9/p720x720/73084142_1336321256539082_5838186321473961984_o.jpg?_nc_cat=105&_nc_oc=AQk-e0NnH3QHJvPi84Qugfz98v7JOZmbAwi_AAGVRLKio6rJXRVkseymMJq5MWw-CvthlIWmaF7Drvhu3lgy1cQP&_nc_ht=scontent.fhan5-6.fna&oh=b1026e6ff1c7f4a2333e42277f6d112a&oe=5E4DAEFC",
      profileImageUrl:
          "https://scontent.fhan5-5.fna.fbcdn.net/v/t1.0-9/75323286_1344866712351203_525008147903938560_n.jpg?_nc_cat=101&_nc_oc=AQk1S-UT4Lo3vojOJ2bLxa36N7HFLo4LtUvdayO_VlcKgZbtO-ZlHbScyF0q2XJz4Qk&_nc_ht=scontent.fhan5-5.fna&oh=80dc6afde326aa5f5d41b647774d9f42&oe=5E4C7755",
      storySeen: false),
  new StoriesModel(
      name: "Killer",
      day: "Today",
      time: "1:00 PM",
      storyImageUrl:"https://scontent.fhan5-6.fna.fbcdn.net/v/t1.0-9/p720x720/51357596_1144401705731039_4671278698249322496_o.jpg?_nc_cat=105&_nc_oc=AQl3sC2VXlKsemupPdbXPTTdY5_bQSLaWKbygF8BjnA1BWhPWmzHeHPrv9I7NFzOjQ0&_nc_ht=scontent.fhan5-6.fna&oh=c6524c19902b4161eec282194c4edd0b&oe=5E59E6EE",
      profileImageUrl:"https://scontent.fhan5-1.fna.fbcdn.net/v/t1.0-9/s960x960/78564254_1357123051125569_5892698548905967616_o.jpg?_nc_cat=109&_nc_oc=AQkBN2HNfwF-JkS1yT1JcAuYP3wDeE5s3eDZTYN64O_QLXWCIBrKiLUh32qGR5hIn3Q&_nc_ht=scontent.fhan5-1.fna&oh=885a03fe83ab1b5d6b44590ed50d1e0e&oe=5E81B2A7",
      storySeen: false),
  new StoriesModel(
      name: "Minh",
      day: "Today",
      time: "1:00 PM",
      storyImageUrl: "https://scontent.fhan5-3.fna.fbcdn.net/v/t1.0-9/s960x960/76656139_1272403239636770_4885998093494910976_o.jpg?_nc_cat=106&_nc_oc=AQnqOSFJ2rz7UaqwJa7BjJ5aheWoHwJ_wsxYIR9lwd7h1393LAsxc5mtUBdXMHUL0Mg&_nc_ht=scontent.fhan5-3.fna&oh=7410b4d29eecbaadf0e257fb09168f70&oe=5E830EE0",      profileImageUrl:
      "https://scontent.fhan5-5.fna.fbcdn.net/v/t1.0-9/75323286_1344866712351203_525008147903938560_n.jpg?_nc_cat=101&_nc_oc=AQk1S-UT4Lo3vojOJ2bLxa36N7HFLo4LtUvdayO_VlcKgZbtO-ZlHbScyF0q2XJz4Qk&_nc_ht=scontent.fhan5-5.fna&oh=80dc6afde326aa5f5d41b647774d9f42&oe=5E4C7755",
      storySeen: false),
  new StoriesModel(
      name: "Minh",
      day: "Today",
      time: "1:00 PM",
      storyImageUrl:"https://scontent.fhan5-7.fna.fbcdn.net/v/t1.0-0/p206x206/72782336_1330483290456212_8545248755820003328_n.jpg?_nc_cat=100&_nc_oc=AQlwtSG4I0K1j-P8wTNy8JKIiWtJrClVNEVZwH0dvwvyZyBvt1IxKpDqOG47Xw_b5sw&_nc_ht=scontent.fhan5-7.fna&oh=8cea8cbe154df9c9cccf45b4e072d517&oe=5E435C59",
      profileImageUrl:"https://scontent.fhan5-4.fna.fbcdn.net/v/t1.0-9/74607674_1330483343789540_8550441470065115136_n.jpg?_nc_cat=104&_nc_oc=AQn__SwuC87prq9gWGRCR_rrczWoHP2wAV6NnPTpbd4SoWS3mDx0E_OfhQymrUkNb5Zv635TiCFgtlilyseP-A-A&_nc_ht=scontent.fhan5-4.fna&oh=b266805181acfe0235f285fd4118bb88&oe=5E4398AF",
      storySeen: false),
  new StoriesModel(
      name: "Minh",
      day: "Today",
      time: "1:00 PM",
      storyImageUrl:
      "https://scontent.fhan5-6.fna.fbcdn.net/v/t1.0-9/p720x720/73084142_1336321256539082_5838186321473961984_o.jpg?_nc_cat=105&_nc_oc=AQk-e0NnH3QHJvPi84Qugfz98v7JOZmbAwi_AAGVRLKio6rJXRVkseymMJq5MWw-CvthlIWmaF7Drvhu3lgy1cQP&_nc_ht=scontent.fhan5-6.fna&oh=b1026e6ff1c7f4a2333e42277f6d112a&oe=5E4DAEFC",
      profileImageUrl:
      "https://scontent.fhan5-5.fna.fbcdn.net/v/t1.0-9/75323286_1344866712351203_525008147903938560_n.jpg?_nc_cat=101&_nc_oc=AQk1S-UT4Lo3vojOJ2bLxa36N7HFLo4LtUvdayO_VlcKgZbtO-ZlHbScyF0q2XJz4Qk&_nc_ht=scontent.fhan5-5.fna&oh=80dc6afde326aa5f5d41b647774d9f42&oe=5E4C7755",
      storySeen: false),
  new StoriesModel(
      name: "Minh",
      day: "Today",
      time: "1:00 PM",
      storyImageUrl:"https://scontent.fhan5-6.fna.fbcdn.net/v/t1.0-9/p720x720/51357596_1144401705731039_4671278698249322496_o.jpg?_nc_cat=105&_nc_oc=AQl3sC2VXlKsemupPdbXPTTdY5_bQSLaWKbygF8BjnA1BWhPWmzHeHPrv9I7NFzOjQ0&_nc_ht=scontent.fhan5-6.fna&oh=c6524c19902b4161eec282194c4edd0b&oe=5E59E6EE",
      profileImageUrl:"https://scontent.fhan5-4.fna.fbcdn.net/v/t1.0-9/74607674_1330483343789540_8550441470065115136_n.jpg?_nc_cat=104&_nc_oc=AQn__SwuC87prq9gWGRCR_rrczWoHP2wAV6NnPTpbd4SoWS3mDx0E_OfhQymrUkNb5Zv635TiCFgtlilyseP-A-A&_nc_ht=scontent.fhan5-4.fna&oh=b266805181acfe0235f285fd4118bb88&oe=5E4398AF",
      storySeen: false),
  new StoriesModel(
      name: "Minh",
      day: "Today",
      time: "1:00 PM",
      storyImageUrl:
      "https://scontent.fhan5-6.fna.fbcdn.net/v/t1.0-9/p720x720/73084142_1336321256539082_5838186321473961984_o.jpg?_nc_cat=105&_nc_oc=AQk-e0NnH3QHJvPi84Qugfz98v7JOZmbAwi_AAGVRLKio6rJXRVkseymMJq5MWw-CvthlIWmaF7Drvhu3lgy1cQP&_nc_ht=scontent.fhan5-6.fna&oh=b1026e6ff1c7f4a2333e42277f6d112a&oe=5E4DAEFC",
      profileImageUrl:
      "https://scontent.fhan5-5.fna.fbcdn.net/v/t1.0-9/75323286_1344866712351203_525008147903938560_n.jpg?_nc_cat=101&_nc_oc=AQk1S-UT4Lo3vojOJ2bLxa36N7HFLo4LtUvdayO_VlcKgZbtO-ZlHbScyF0q2XJz4Qk&_nc_ht=scontent.fhan5-5.fna&oh=80dc6afde326aa5f5d41b647774d9f42&oe=5E4C7755",
      storySeen: false),
  new StoriesModel(
      name: "Minh",
      day: "Today",
      time: "1:00 PM",
      storyImageUrl:"https://scontent.fhan5-6.fna.fbcdn.net/v/t1.0-9/p720x720/51357596_1144401705731039_4671278698249322496_o.jpg?_nc_cat=105&_nc_oc=AQl3sC2VXlKsemupPdbXPTTdY5_bQSLaWKbygF8BjnA1BWhPWmzHeHPrv9I7NFzOjQ0&_nc_ht=scontent.fhan5-6.fna&oh=c6524c19902b4161eec282194c4edd0b&oe=5E59E6EE",
      profileImageUrl:"https://scontent.fhan5-4.fna.fbcdn.net/v/t1.0-9/74607674_1330483343789540_8550441470065115136_n.jpg?_nc_cat=104&_nc_oc=AQn__SwuC87prq9gWGRCR_rrczWoHP2wAV6NnPTpbd4SoWS3mDx0E_OfhQymrUkNb5Zv635TiCFgtlilyseP-A-A&_nc_ht=scontent.fhan5-4.fna&oh=b266805181acfe0235f285fd4118bb88&oe=5E4398AF",
      storySeen: false),
  new StoriesModel(
      name: "Minh",
      day: "Today",
      time: "1:00 PM",
      storyImageUrl:
      "https://scontent.fhan5-6.fna.fbcdn.net/v/t1.0-9/p720x720/73084142_1336321256539082_5838186321473961984_o.jpg?_nc_cat=105&_nc_oc=AQk-e0NnH3QHJvPi84Qugfz98v7JOZmbAwi_AAGVRLKio6rJXRVkseymMJq5MWw-CvthlIWmaF7Drvhu3lgy1cQP&_nc_ht=scontent.fhan5-6.fna&oh=b1026e6ff1c7f4a2333e42277f6d112a&oe=5E4DAEFC",
      profileImageUrl:
      "https://scontent.fhan5-5.fna.fbcdn.net/v/t1.0-9/75323286_1344866712351203_525008147903938560_n.jpg?_nc_cat=101&_nc_oc=AQk1S-UT4Lo3vojOJ2bLxa36N7HFLo4LtUvdayO_VlcKgZbtO-ZlHbScyF0q2XJz4Qk&_nc_ht=scontent.fhan5-5.fna&oh=80dc6afde326aa5f5d41b647774d9f42&oe=5E4C7755",
      storySeen: false),
  new StoriesModel(
      name: "Minh",
      day: "Today",
      time: "1:00 PM",
      storyImageUrl:"https://scontent.fhan5-6.fna.fbcdn.net/v/t1.0-9/p720x720/51357596_1144401705731039_4671278698249322496_o.jpg?_nc_cat=105&_nc_oc=AQl3sC2VXlKsemupPdbXPTTdY5_bQSLaWKbygF8BjnA1BWhPWmzHeHPrv9I7NFzOjQ0&_nc_ht=scontent.fhan5-6.fna&oh=c6524c19902b4161eec282194c4edd0b&oe=5E59E6EE",
      profileImageUrl:"https://scontent.fhan5-4.fna.fbcdn.net/v/t1.0-9/74607674_1330483343789540_8550441470065115136_n.jpg?_nc_cat=104&_nc_oc=AQn__SwuC87prq9gWGRCR_rrczWoHP2wAV6NnPTpbd4SoWS3mDx0E_OfhQymrUkNb5Zv635TiCFgtlilyseP-A-A&_nc_ht=scontent.fhan5-4.fna&oh=b266805181acfe0235f285fd4118bb88&oe=5E4398AF",
      storySeen: false),
];
