import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_clone_hw/theme/colors.dart';

class RootAppBar extends StatelessWidget implements PreferredSizeWidget {
  final int position;
  final VoidCallback onMessageClick;
  final VoidCallback onCameraClick;

  RootAppBar({required this.position,
      required this.onMessageClick,
      required this.onCameraClick
      });

  @override
  Widget build(BuildContext context) {
    List<AppBar> appBarItems = [
      _getHome,
      _getSearch,
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

AppBar get _getSearch {
  return AppBar(
    backgroundColor: appBarColor,
    title: TextField(
      style: TextStyle(color: white),
      decoration: InputDecoration(
        hintText: 'Search',
        contentPadding: EdgeInsets.symmetric(vertical: -10),
        prefixIcon: Icon(
          Icons.search,
          color: grey,
        ),
        hintStyle: TextStyle(color: grey),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(18))),
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
