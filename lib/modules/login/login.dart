import 'package:AppDemo/modules/home/home.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Login();

  @override
  Widget build(BuildContext context) {
    final loginAppleButton = RaisedButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(
              image: AssetImage('assets/images/IconApple.png'),
              height: 15.0,
              fit: BoxFit.fitHeight),
          SizedBox(width: 10.0),
          Text('Login with Apple',
              style: TextStyle(fontSize: 20.0, color: Colors.white))
        ],
      ),
      shape:
          RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
      color: Colors.black,
    );

    final loginFacebookButton = RaisedButton(
      onPressed: () {},
      child: const Text('Facebook',
          style: TextStyle(fontSize: 20.0, color: Colors.white)),
      shape:
          RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
      color: Color.fromRGBO(30, 86, 42, 1),
    );

    final loginGoogleButton = RaisedButton(
      onPressed: () {},
      child: const Text('Google',
          style: TextStyle(fontSize: 20, color: Color.fromRGBO(30, 86, 42, 1))),
      shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(30.0),
          side: BorderSide(color: Color.fromRGBO(30, 86, 42, 1))),
      color: Colors.white,
    );

    double widthButton = MediaQuery.of(context).size.width * 0.8;
    return Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              child: new Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Image(
                      image: AssetImage("assets/images/Background@2x.png"),
                      fit: BoxFit.contain),
                  Container(
                    margin: EdgeInsets.all(50.0),
                    child: Image(
                        image: AssetImage("assets/images/ImageHome@2x.png"),
                        fit: BoxFit.contain),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Text(
                      'Truyện Cổ Tích Audio',
                      style: TextStyle(fontFamily: 'Pacifico', fontSize: 24.0),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: widthButton,
                    height: 44,
                    child: loginAppleButton,
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: widthButton,
                    height: 44,
                    child: loginFacebookButton,
                  ),
                  SizedBox(height: 10),
                  Container(
                      width: widthButton, height: 44, child: loginGoogleButton),
                ],
              ),
            )
          ],
        ),
        Container(
          padding: EdgeInsets.only(bottom: 15),
          alignment: FractionalOffset.bottomCenter,
          child: Text.rich(TextSpan(children: <TextSpan>[
            TextSpan(text: 'Điều khoản', style: TextStyle(color: Colors.red)),
            TextSpan(text: ' người dùng và'),
            TextSpan(text: ' Bảo mật', style: TextStyle(color: Colors.red)),
            TextSpan(text: ' thông tin')
          ])),
        )
      ],
    );
  }
}
