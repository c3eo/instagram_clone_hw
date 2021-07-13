import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_clone_hw/theme/colors.dart';

AppBar getAppBar(int position) {
  if (position == 0) {
    return _getHome;
  } else if (position == 1) {
    return _getSearch;
  } else if (position == 2) {
    return _getUpload;
  } else if (position == 3) {
    return _getNotification;
  } else {
    return _getProfile;
  }
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
        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(18))),
      ),
    ),
  );
}

AppBar get _getUpload {
  return AppBar();
}

AppBar get _getNotification {
  return AppBar();
}

AppBar get _getProfile {
  return AppBar();
}
