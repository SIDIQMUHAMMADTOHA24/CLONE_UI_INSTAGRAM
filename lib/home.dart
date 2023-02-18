import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram/page/search_page.dart';
import 'page/home_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  void _setIndex(value) {
    index = value;
    setState(() {});
  }

  

  final List<Widget> _list = [
    AppBartest(),
    SearchPage(),
    const Center(
      child: Text('Rells'),
    ),
    const Center(
      child: Text('Shop'),
    ),
    const Center(
      child: Text('Account'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _list[index],
      bottomNavigationBar: Theme(
        data: ThemeData(
          hoverColor: Colors.transparent,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
            backgroundColor: Colors.white,
            elevation: 0,
            iconSize: 30,
            onTap: _setIndex,
            currentIndex: index,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: (index == 0)
                    ? SvgPicture.asset('asset/icon/home_black.svg')
                    : SvgPicture.asset('asset/icon/home.svg'),
                label: '',
              ),
              BottomNavigationBarItem(
                  icon: (index == 1)
                      ? SvgPicture.asset('asset/icon/search_black.svg')
                      : SvgPicture.asset('asset/icon/search.svg'),
                  label: ''),
              BottomNavigationBarItem(
                  icon: (index == 2)
                      ? SvgPicture.asset('asset/icon/rells_black.svg')
                      : SvgPicture.asset('asset/icon/rells.svg'),
                  label: ''),
              BottomNavigationBarItem(
                  icon: (index == 3)
                      ? SvgPicture.asset('asset/icon/shop_black.svg')
                      : SvgPicture.asset('asset/icon/shop.svg'),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          border: (index == 4)
                              ? Border.all(width: 2)
                              : Border.all(color: Colors.white),
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(50))),
                  label: ''),
            ]),
      ),
    );
  }
}
