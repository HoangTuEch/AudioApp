import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String name;
  CategoryItem(this.name);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 6, bottom: 6),
      child: Container(
        child: Row(
          children: [
            Container(
              width: 1,
              color: Color(0xff1e562a),
            ),
            SizedBox(
              width: 4,
            ),
            Expanded(
              child: Text(
                name,
                style: TextStyle(
                    color: Color(0xff1e562a),
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              padding: EdgeInsets.all(9),
              width: 26,
              child: Image(image: AssetImage('assets/images/IconShowDetail.png')),
            )
          ],
        ),
        color: Color(0xffd4f1cf).withAlpha(87),
        height: 30,
      ),
    );
  }
}
