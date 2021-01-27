import 'package:flutter/material.dart';
import 'package:AppDemo/components/StoryCategory.dart';

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
          StoryCategory(
            storyTitle: 'Truyện nổi bật',
          ),
          StoryCategory(
            storyTitle: 'Truyện mới nhất',
          )
        ]),
      ),
    );
  }
}
