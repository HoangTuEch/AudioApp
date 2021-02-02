import 'package:flutter/material.dart';
import 'ListItem.dart';

class StoryCategory extends StatefulWidget {
  final String storyTitle;

  const StoryCategory({
    Key key,
    this.storyTitle,
  }) : super(key: key);

  @override
  _StoryCategoryState createState() => _StoryCategoryState();
}

class _StoryCategoryState extends State<StoryCategory> {
  bool isViewMore = false;

  final ScrollController _listViewController = ScrollController();

  void _changeViewMore() {
    setState(() => {isViewMore = !isViewMore});

    _listViewController.jumpTo(0);
  }

  @override
  Widget build(BuildContext context) {
    String title = widget.storyTitle;

    return Container(
      height: isViewMore ? 520 : 360,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 6),
            alignment: Alignment.topLeft,
            child: Text(
              '$title',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromRGBO(15, 15, 15, 0.86),
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
          ),
          Container(
            child: Expanded(
              child: ListView.builder(
                physics: isViewMore
                    ? ClampingScrollPhysics()
                    : NeverScrollableScrollPhysics(),
                controller: _listViewController,
                itemCount: 50,
                itemBuilder: (BuildContext context, int index) {
                  return ListItem(index: index + 1);
                },
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 6),
            child: InkWell(
              onTap: _changeViewMore,
              child: Text(
                isViewMore ? 'Thu gọn' : 'Xem thêm',
                style: TextStyle(
                  color: Color.fromRGBO(30, 86, 42, 1),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
