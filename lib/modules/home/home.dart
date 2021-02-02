import 'package:AppDemo/components/CategoryItem.dart';
import 'package:AppDemo/components/Header/HeaderView.dart';
import 'package:AppDemo/components/PageImage/PageImageView.dart';
import 'package:flutter/material.dart';
import 'package:AppDemo/components/ListItems/StoryCategory.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"),
      ),
      body: BodyList(),
    );
  }
}

class BodyList extends StatelessWidget {
  const BodyList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: SingleChildScrollView(
        child: Column(children: [
          HeaderViewWidget(),
          PageImageView(),
          StoryCategory(
            storyTitle: 'Truyện nổi bật',
          ),
          StoryCategory(
            storyTitle: 'Truyện mới nhất',
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.all(0.0),
              child: Text(
                'Thể loại truyện',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                textAlign: TextAlign.left,
              ),
            ),
          Column(
            children: [
              CategoryItem("Truyện cổ tích Việt Nam"),
              CategoryItem("Truyện cổ tích thế giới"),
              CategoryItem("Truyện cổ tích Việt Nam"),
              CategoryItem("Truyện cổ tích thế giới")
            ],
          )
        ]),
      ),
    );
  }
}
