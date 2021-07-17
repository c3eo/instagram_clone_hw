import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_clone_hw/theme/colors.dart';

class RootBtnv extends StatelessWidget {
  final indexPage;
  final Function(int) onIndexPageChange;

  RootBtnv({required this.indexPage, required this.onIndexPageChange});

  @override
  Widget build(BuildContext context) {
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
                onIndexPageChange(index);
              },
              child: SvgPicture.asset(
                  items[index], width: 24),);
          }),
        ),
      ),
    );
  }
}
