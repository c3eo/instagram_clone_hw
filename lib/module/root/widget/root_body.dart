import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone_hw/constant/post_json.dart';
import 'package:instagram_clone_hw/constant/story_json.dart';
import 'package:instagram_clone_hw/theme/colors.dart';
import 'package:instagram_clone_hw/module/root/widget/post_item.dart';
import 'package:instagram_clone_hw/module/root/widget/story_item.dart';

class RootBody extends StatelessWidget {
  final int indexPage;

  RootBody({required this.indexPage});

  @override
  Widget build(BuildContext context) {
    List<Widget> homeWidgetItems = [
      _getHome,
      _getSearch,
      _getUpload,
      _getNotification,
      _getProfile
    ];
    return IndexedStack(
      index: indexPage,
      children: homeWidgetItems,
    );
  }

  Widget get _getHome {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                Padding(
                  padding:
                  const EdgeInsets.only(right: 20, left: 15, bottom: 10),
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 65,
                        height: 65,
                        child: Stack(
                          children: <Widget>[
                            Container(
                              width: 65,
                              height: 65,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: NetworkImage(profile),
                                      fit: BoxFit.cover)),
                            ),
                            Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  width: 19,
                                  height: 19,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle, color: white),
                                  child: Icon(
                                    Icons.add_circle,
                                    color: buttonFollowColor,
                                    size: 19,
                                  ),
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        width: 70,
                        child: Text(
                          name,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: white),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                    children: List.generate(stories.length, (index) {
                      return StoryItem(
                        img: stories[index]['img'],
                        name: stories[index]['name'],
                      );
                    })),
              ],
            ),
          ),
          Divider(
            color: white.withOpacity(0.3),
          ),
          Column(
            children: List.generate(posts.length, (index) {
              return PostItem(
                postImg: posts[index]['postImg'],
                profileImg: posts[index]['profileImg'],
                name: posts[index]['name'],
                caption: posts[index]['caption'],
                isLoved: posts[index]['isLoved'],
                viewCount: posts[index]['commentCount'],
                likedBy: posts[index]['likedBy'],
                dayAgo: posts[index]['timeAgo'],
              );
            }),
          )
        ],
      ),
    );
  }

  Widget get _getSearch {
    return Container(
      child: Text(
        "Search",
        style: TextStyle(color: white),
      ),
    );
  }

  Widget get _getUpload {
    return Container(
      child: Text(
        "Upload",
        style: TextStyle(color: white),
      ),
    );
  }

  Widget get _getNotification {
    return Container(
      child: Text(
        "Notification",
        style: TextStyle(color: white),
      ),
    );
  }

  Widget get _getProfile {
    return Container(
      child: Text(
        "Profile",
        style: TextStyle(color: white),
      ),
    );
  }
}
