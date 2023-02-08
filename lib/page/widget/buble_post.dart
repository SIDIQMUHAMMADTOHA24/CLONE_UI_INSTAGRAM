import 'package:flutter/material.dart';

import '../../data/data.dart';

// ignore: must_be_immutable
class BubleStroy extends StatelessWidget {
  BubleStroy({
    super.key,
    required this.welcome,
  });
  String kata = 'xtxany';

  final Welcome welcome;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: welcome.hits!.length,
      itemBuilder: (context, index) {
        var data = welcome.hits![index];
        return (index == 0)
            ? Padding(
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
              )
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Stack(children: [
                  Column(
                    children: [
                      Stack(children: [
                        CircleAvatar(
                          radius: 31,
                          backgroundImage: const NetworkImage(
                              'https://i.pinimg.com/564x/51/61/d4/5161d461d6606f7f619cb7f5495c650d.jpg'),
                          child: CircleAvatar(
                            radius: 29,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 27,
                              backgroundImage: NetworkImage((index == 15)
                                  ? 'https://avatars.githubusercontent.com/u/119821427?v=4'
                                  : data.userImageUrl),
                            ),
                          ),
                        ),
                        if (index == 1 || index == 2 )
                          Positioned(
                            bottom: 0,
                            left: 15,
                            child: Container(
                              height: 18,
                              width: 30,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white,width: 2),
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(5)),
                              child: const Text(
                                'Live',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    fontSize: 10),
                              ),
                            ),
                          )
                      ]),
                      Text(
                          (data.user.length > 8)
                              ? (data.user.substring(0, 8) + ('..'))
                              : data.user,
                          style: TextStyle(
                              fontSize: 11.5,
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(0.75))),
                    ],
                  )
                ]),
              );
      },
    );
  }
}
/* 
 
 */