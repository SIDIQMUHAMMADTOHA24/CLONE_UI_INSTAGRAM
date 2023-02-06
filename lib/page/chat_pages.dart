// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  Chat({
    Key? key,
  }) : super(key: key);

  String kata = 'xxynadaaull';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: const [
            Text(
              'sidiqtohaa',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
            Icon(Icons.keyboard_arrow_down, color: Colors.black)
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(
              Icons.add,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 35,
              margin: const EdgeInsets.symmetric(horizontal: 18),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.2)),
              child: const TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(15),
                    hintText: 'Cari',
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none),
              )),
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.only(left: 15, top: 5),
              height: 110,
              child: Row(children: [
                Stack(alignment: Alignment.topRight, children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.grey.shade300,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text('Tinggalkan Catatan',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(0.75)))
                    ],
                  ),
                  Positioned(
                    right: 10,
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 5,
                                color: Colors.grey)
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Icon(
                        Icons.add,
                        size: 25,
                      ),
                    ),
                  ),
                ]),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Stack(alignment: Alignment.topRight, children: [
                    Column(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.grey.shade300,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                            (kata.length > 8)
                                ? ('${kata.substring(0, 8)}..')
                                : kata,
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Colors.black.withOpacity(0.75)))
                      ],
                    ),
                    Container(
                      constraints: const BoxConstraints(maxWidth: 50),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 5,
                                color: Colors.grey)
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text(
                        'lu asik bang ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    )
                  ]),
                )
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: const [
                 Text(
                  'Pesan',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                ),
                 Spacer(),
                 Text(
                  'Permintaan',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: Colors.blue),
                )
              ],
            ),
          ),
          ListTile(
            leading: const CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                  'https://1.bp.blogspot.com/--SXq6K2Kb2w/Xoqc5LzzPCI/AAAAAAAAFeY/kZBDdjp8m-gHpi3iyjI93IrCykM2cbHcACLcBGAsYHQ/s1600/jokowi_ig.jpg'),
            ),
            title: Row(
              children: const [
                 Text(
                  'jokowi',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                 SizedBox(
                  width: 5,
                ),
                 Icon(
                  Icons.verified,
                  color: Colors.blue,
                  size: 18,
                )
              ],
            ),
            subtitle: const Text(
              'besok bisa ikut saya ke rusia?',
              style: TextStyle(fontSize: 13),
            ),
          )
        ],
      ),
    );
  }
}
