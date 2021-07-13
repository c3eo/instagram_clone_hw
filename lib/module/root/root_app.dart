import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone_hw/module/root/widget/app_bar.dart';
import 'package:instagram_clone_hw/theme/colors.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int indexPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar,
      bottomNavigationBar: _btnv,
    );
  }

  AppBar? get _getAppBar {
    return getAppBar(indexPage);
  }

  Widget get _btnv {
    List items = [
      indexPage == 0
          ? "assets/images/home_active_icon.svg"
          : "assets/images/home_icon.svg",
      indexPage == 1
          ? "assets/images/search_active_icon.svg"
          : "assets/images/search_icon.svg",
      indexPage == 2
          ? "assets/images/upload_active_icon.svg"
          : "assets/images/upload_icon.svg",
      indexPage == 3
          ? "assets/images/love_active_icon.svg"
          : "assets/images/love_icon.svg",
      indexPage == 4
          ? "assets/images/account_active_icon.svg"
          : "assets/images/account_icon.svg"
    ];

    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
          color: appFooterColor
      ),
      child: Padding(
        padding: const EdgeInsets.only(
            left: 20, right: 20, bottom: 20, top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(items.length, (index) {
            return InkWell(
              onTap: () {
                selectTab(index);
              },
              child: SvgPicture.asset(
                  items[index], width: 24),);
          }),
        ),
      ),
    );
  }

  selectTab(index) {
    setState(() {
      indexPage = index;
    });
  }
}



