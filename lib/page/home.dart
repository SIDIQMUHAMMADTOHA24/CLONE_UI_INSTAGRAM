import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram/data/data.dart';
import 'package:instagram/model/model.dart';
import 'chat_pages.dart';
import 'widget/buble_post.dart';
import 'widget/user_post.dart';

class AppBartest extends StatefulWidget {
  AppBartest({super.key});

  @override
  State<AppBartest> createState() => _AppBartestState();
}

class _AppBartestState extends State<AppBartest> {
  List<Hit> hit = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    User().getData().then((value) {
      hit = value;
      setState(() {});
    });
  }

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(controller: _controller, children: [
      Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Row(
              children: [
                SvgPicture.asset('asset/icon/logo.svg'),
                const Icon(Icons.keyboard_arrow_down)
              ],
            ),
            actions: [
              SvgPicture.asset('asset/icon/add.svg'),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.favorite_outline,
                  size: 27,
                ),
              ),
              SvgPicture.asset('asset/icon/send.svg'),
              const SizedBox(
                width: 10,
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [BubleStroy(), const Divider(), const UserPost()]),
          )),
      Chat()
    ]);
  }
}
