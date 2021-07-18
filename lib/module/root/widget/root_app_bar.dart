import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_clone_hw/theme/colors.dart';

class RootAppBar extends StatelessWidget implements PreferredSizeWidget {
  final int position;

  RootAppBar({
    required this.position,
  });

  @override
  Widget build(BuildContext context) {
    List<AppBar> appBarItems = [
      _getHome,
      _getSearch(context),
      _getUpload,
      _getNotification,
      _getProfile
    ];
    return IndexedStack(
      index: position,
      children: appBarItems,
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}

AppBar get _getHome {
  return AppBar(
    backgroundColor: appBarColor,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        SvgPicture.asset(
          "assets/images/camera_icon.svg",
          width: 30,
        ),
        Text(
          "Instagram",
          style: TextStyle(fontFamily: 'Billabong', fontSize: 35),
        ),
        SvgPicture.asset(
          "assets/images/message_icon.svg",
          width: 30,
        ),
      ],
    ),
  );
}

AppBar _getSearch(BuildContext context) {
  return AppBar(
    backgroundColor: appBarColor,
    title: Container(
      width: MediaQuery.of(context).size.width - 30,
      height: 45,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: textFieldBackground),
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Search",
            hintStyle: TextStyle(color: grey),

            prefixIcon: Icon(
              Icons.search,
              color: white.withOpacity(0.3),
            )),
        style: TextStyle(color: white),
        cursorColor: white.withOpacity(0.3),
      ),
    ),
  );
}

AppBar get _getUpload {
  return AppBar(
    backgroundColor: appBarColor,
  );
}

AppBar get _getNotification {
  return AppBar(
    backgroundColor: appBarColor,
  );
}

AppBar get _getProfile {
  return AppBar(
    backgroundColor: appBarColor,
  );
}
