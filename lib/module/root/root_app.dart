import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone_hw/module/root/widget/root_app_bar.dart';
import 'package:instagram_clone_hw/module/root/widget/root_body.dart';
import 'package:instagram_clone_hw/module/root/widget/root_btnv.dart';
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
      backgroundColor: black,
      appBar: RootAppBar(
        position: indexPage,
        onCameraClick: () => {},
        onMessageClick: () => {},
      ),
      body: RootBody(
        indexPage: indexPage,
        context: context,
      ),
      bottomNavigationBar: RootBtnv(
        indexPage: indexPage,
        onIndexPageChange: (int indexPage) => {
          selectTab(indexPage)
        },
      ),
    );
  }

  selectTab(index) {
    setState(() {
      indexPage = index;
    });
  }
}



