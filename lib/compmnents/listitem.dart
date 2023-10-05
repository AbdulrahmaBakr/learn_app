import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/src/audio_cache.dart';

import 'package:flutter/material.dart';

import '../models/item.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.item, required this.color});
  final Item item;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 120,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 20),
            height: 115,
            width: 100,
            color: Color(0xffFFF3D9),
            child: Image.asset(item.image),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                item.jpName,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                item.enName,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () async {
              final player = AudioPlayer();
              await player.play(AssetSource(item.audio));
            },
            icon: Icon(Icons.play_arrow),
          ),
        ],
      ),
    );
  }
}
