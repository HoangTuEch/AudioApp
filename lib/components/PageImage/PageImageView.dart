import 'dart:async';
import 'package:flutter/material.dart';

class PageImageView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PageImageViewState();
  }
}

class _PageImageViewState extends State<PageImageView> {
  final GlobalKey<_PageControlState> _key = GlobalKey();

  int current = 0;
  Timer _timer;
  final _scrollController = ScrollController();

  final List<String> allImage = [
    "assets/images/ImagePage1.png",
    "assets/images/ImagePage2.png",
    "assets/images/ImagePage3.png",
    "assets/images/ImagePage4.png"
  ];

  List<Widget> _makeImageView() {
    return allImage
        .map((e) => Container(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                e,
                fit: BoxFit.fill,
              ),
            ))
        .toList();
  }

  void _startTimer() {
    if (allImage.length < 1) {
      return;
    }
    _timer = Timer.periodic(Duration(seconds: 2), (timer) {
      int value = this.current + 1;
      this.current = value % allImage.length;
      _key.currentState.updateState(current: this.current);
      double offset = MediaQuery.of(context).size.width * this.current;
      _scrollController.animateTo(offset,
          duration: Duration(milliseconds: 250), curve: Curves.ease);
      print("set current ${this.current}");
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_timer != null) {
      _timer.cancel();
    }
    _startTimer();
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: 180,
              child: new ListView(
                controller: _scrollController,
                scrollDirection: Axis.horizontal,
                shrinkWrap: false,
                children: _makeImageView(),
              )),
          SizedBox(
            height: 14,
          ),
          PageControlView(key: _key, numberOfItem: allImage.length)
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class PageControlView extends StatefulWidget {
  int numberOfItem;
  PageControlView({Key key, this.numberOfItem}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _PageControlState(this.numberOfItem);
  }
}

class _PageControlState extends State<PageControlView> {
  int numberItem = 1;
  int current = 0;

  _PageControlState(this.numberItem);

  updateState({int current}) {
    print("update current ${current}");
    setState(() {
      this.current = current;
    });
  }

  List<Widget> _makeChild() {
    if (this.numberItem < 1) {
      return [];
    } else {
      List<Widget> result = [];
      for (var i = 0; i < this.numberItem; i++) {
        bool isCurrent = this.current == i;
        if (i == 0) {
          result.add(DotWidget(isCurrent));
        } else {
          result.addAll([SizedBox(width: 5), DotWidget(isCurrent)]);
        }
      }
      print(result.length);
      return result;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 6,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _makeChild()));
  }
}

// ignore: must_be_immutable
class DotWidget extends StatelessWidget {
  bool isCurrent;
  DotWidget(this.isCurrent);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 6,
        height: 6,
        child: Container(),
        decoration: BoxDecoration(
            color: isCurrent ? Color(0xffab3611) : Color(0xfff1e2cf),
            borderRadius: BorderRadius.all(Radius.circular(3))));
  }
}
