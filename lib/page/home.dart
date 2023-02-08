import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../data/data.dart';
import '../servis/servis.dart';
import 'chat_pages.dart';
import 'widget/buble_post.dart';
import 'widget/user_post.dart';

class AppBartest extends StatefulWidget {
  const AppBartest({super.key});

  @override
  State<AppBartest> createState() => _AppBartestState();
}

class _AppBartestState extends State<AppBartest> {
  final _controller = PageController();

  Welcome? welcome;

  getDataSkuy() async {
    welcome = await User().getData();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getDataSkuy();
  }

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
          body: (welcome != null)
              ? CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                        child: SizedBox(
                            height: 80, child: BubleStroy(welcome: welcome!))),
                    SliverList(delegate: SliverChildListDelegate([Divider()])),
                    UserPost(welcome: welcome!)
                  ],
                )
              : Container()),
      Chat()
    ]);
  }
}
/* 
Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            //buble post
            if (welcome != null)
              SizedBox(height: 100, child: BubleStroy(welcome: welcome!))
            else
               SizedBox(
                  height: 80,
                  child: Center(
                    child: Container(),
                  )),
            const Divider(),
            //user post
            if (welcome != null)
              Expanded(
                child: UserPost(
                  welcome: welcome!,
                ),
              )
            else
              Center(child: Container())
          ])
 */