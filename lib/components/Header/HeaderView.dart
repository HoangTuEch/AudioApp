import 'package:flutter/material.dart';

class HeaderViewWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HeaderViewState();
  }
}

class _HeaderViewState extends State<HeaderViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      padding: EdgeInsets.all(0),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.only(right: 5),
            width: 29,
            child: FlatButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              child: Image.asset('assets/images/IconMenuHeader.png'),
            ),
          ),
          Expanded(
              child: Container(
            height: 30,
            padding: EdgeInsets.only(top: 6, bottom: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/IconSearchHeader.png'),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "Tìm kiếm truyện",
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xff1e562a), width: 1),
                borderRadius: BorderRadius.all(Radius.circular(15))),
          )),
          Container(
            padding: EdgeInsets.only(left: 5),
            width: 31,
            child: FlatButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              child: Image.asset('assets/images/IconVIPHeader.png'),
            ),
          ),
        ],
      ),
    );
  }
}
