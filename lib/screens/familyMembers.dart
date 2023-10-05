import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../compmnents/listitem.dart';
import '../models/item.dart';

class familyPage extends StatelessWidget {
  const familyPage({super.key});
  final List<Item> item = const [
    Item(
        image: 'assets/images/numbers/number_one.png',
        jpName: 'ICHI',
        enName: 'ONE',
        audio: 'sounds/numbers/number_one_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_two.png',
        jpName: 'Ni',
        enName: 'TWO',
        audio: 'sounds/numbers/number_two_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_three.png',
        jpName: 'Mittsu',
        enName: 'THREE',
        audio: 'sounds/numbers/number_three_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_four.png',
        jpName: 'Shi',
        enName: 'FOUR',
        audio: 'sounds/numbers/number_four_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_five.png',
        jpName: 'Go',
        enName: 'FIVE',
        audio: 'sounds/numbers/number_five_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_six.png',
        jpName: 'Roku',
        enName: 'SIX',
        audio: 'sounds/numbers/number_six_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_seven.png',
        jpName: 'Sebun',
        enName: 'SEVEN',
        audio: 'sounds/numbers/number_seven_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_eight.png',
        jpName: 'Hachi',
        enName: 'EIGHT',
        audio: 'sounds/numbers/number_eight_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_nine.png',
        jpName: 'Kyū',
        enName: 'NINE',
        audio: 'sounds/numbers/number_nine_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_ten.png',
        jpName: 'Jū',
        enName: 'TEN',
        audio: 'sounds/numbers/number_ten_sound.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Family Members'),
          backgroundColor: Color(0xFF547D3A),
        ),
        body: ListView.builder(
          itemCount: item.length,
          itemBuilder: (context, index) {
            return ListItem(
              item: item[index],
              color: Color(0xFF547D3A),
            );
          },
        ),
      ),
    );
  }
}
