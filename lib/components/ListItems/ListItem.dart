import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final int index;

  const ListItem({
    Key key,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String indexString = '0$index'.substring('0$index'.length - 2);
    bool isVip = index == 1;

    return Container(
      padding: EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: Color.fromRGBO(181, 190, 183, 1)),
        ),
      ),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.0),
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              child: Text(
                '$indexString',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(191, 136, 119, 1),
                ),
              ),
            ),
            Image.asset(
              'assets/images/audio-img.png',
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          // flex: 2,
                          child: Container(
                            child: Text(
                              'Thánh Gióng - Truyện cổ tích something i don\'t know ',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(15, 15, 15, 0.86),
                              ),
                            ),
                          ),
                        ),
                        isVip ? IconVip() : Container(),
                      ],
                    ),
                    Text(
                      'Thể loại : Truyện cổ tích',
                      style: TextStyle(
                        color: Color.fromRGBO(79, 79, 79, 1),
                        fontSize: 10,
                      ),
                    ),
                    Text(
                      'Lượt nghe : 1511',
                      style: TextStyle(
                        color: Color.fromRGBO(79, 79, 79, 1),
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class IconVip extends StatelessWidget {
  const IconVip({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset('assets/images/IconVIP.png'),
      height: 24,
      width: 24,
    );
  }
}
