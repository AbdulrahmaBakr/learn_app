import 'package:flutter/material.dart';
import 'package:learn_app/screens/colorsPage.dart';
import 'package:learn_app/screens/numbersPage.dart';

import '../compmnents/categoryList.dart';
import 'familyMembers.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF3D9),
      appBar: AppBar(
        backgroundColor: Color(0xFF49332A),
        title: Text('Tika Taka'),
      ),
      body: Column(
        children: [
          Category(
            tap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const numbersPage();
              }));
            },
            text: 'Numbers',
            color: Color(0xFFFF9F3B),
          ),
          Category(
            tap: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) {
                return const familyPage();
              })));
            },
            text: 'Family Members',
            color: Color(0xFF547D3A),
          ),
          Category(
            tap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const colorsPage();
              }));
            },
            text: 'Colors',
            color: Color(0xFF854CAE),
          ),
          Category(
            text: 'Phases',
            color: Color(0xFF51B0D5),
          )
        ],
      ),
    );
  }
}
