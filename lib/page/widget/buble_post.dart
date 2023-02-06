import 'package:flutter/material.dart';

import '../../data/data.dart';

// ignore: must_be_immutable
class BubleStroy extends StatelessWidget {
  BubleStroy({
    super.key,
  });
  String kata = 'xtxany';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              children: [
                Stack(children: [
                  CircleAvatar(
                    radius: 31,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 29,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 27,
                        backgroundColor: Colors.grey.shade300,
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 40,
                    left: 40,
                    child: CircleAvatar(
                      radius: 9,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.blue,
                        child: Icon(
                          Icons.add,
                          size: 15,
                        ),
                      ),
                    ),
                  ),
                ]),
                Text('Cerita Anda',
                    style: TextStyle(
                        fontSize: 11.5,
                        fontWeight: FontWeight.w500,
                        color: Colors.black.withOpacity(0.75)))
              ],
            ),
          ),
          UserPostBuble(kata: kata),
        ],
      ),
    );
  }
}

class UserPostBuble extends StatelessWidget {
  const UserPostBuble({
    super.key,
    required this.kata,
  });

  final String kata;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Stack(children: [
        Column(
          children: [
            const CircleAvatar(
              radius: 31,
              backgroundImage: NetworkImage(
                  'https://i.pinimg.com/564x/51/61/d4/5161d461d6606f7f619cb7f5495c650d.jpg'),
              child: CircleAvatar(
                radius: 29,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 27,
                  backgroundColor: Colors.grey,
                ),
              ),
            ),
            Text((kata.length > 8) ? (kata.substring(0, 8) + ('..')) : kata,
                style: TextStyle(
                    fontSize: 11.5,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.75)))
          ],
        ),
      ]),
    );
  }
}
