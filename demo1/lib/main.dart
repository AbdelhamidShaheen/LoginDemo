import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(Myhome());
}

class Myhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Mypage(),
      theme: ThemeData(primaryColor: Colors.cyan),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Mypage extends StatefulWidget {
  @override
  _MypageState createState() => _MypageState();
}

class _MypageState extends State<Mypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Sign Up",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.cyan[300],
                  Colors.cyan[200],
                  Colors.cyan[100],
                  Colors.cyan[50]
                ])),
          ),
          Padding(
            padding: EdgeInsets.all(50),
            child: Container(
              //color: Colors.orange,
              alignment: Alignment.center,
              child: Column(
                verticalDirection: VerticalDirection.down,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(10),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Username",
                      ),
                      maxLength: 20,
                      textAlign: TextAlign.center,
                      cursorColor: Colors.white,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Email",
                      ),
                      maxLength: 20,
                      textAlign: TextAlign.center,
                      cursorColor: Colors.white,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Password",
                      ),
                      maxLength: 20,
                      textAlign: TextAlign.center,
                      cursorColor: Colors.white,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    constraints: BoxConstraints.expand(height: 40),
                    child: OutlineButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      onPressed: () {},
                      child: Text("SIGN UP"),
                      highlightedBorderColor: Colors.white,
                      highlightColor: Colors.cyan[100],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    // color: Colors.green,
                    child: Text(
                      "Or by using",
                      style: TextStyle(
                          color: Colors.cyan,
                          fontFamily: "Baskerville",
                          fontSize: 13),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.cyan),
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Wrap(
                      children: <Widget>[
                        IconButton(
                            color: Colors.blue[300],
                            iconSize: 30,
                            icon: FaIcon(FontAwesomeIcons.facebook),
                            onPressed: () {}),
                        Container(
                          constraints:
                              BoxConstraints.expand(width: 1, height: 50),
                          child: VerticalDivider(
                            color: Colors.cyan,
                          ),
                        ),
                        IconButton(
                            color: Colors.cyan[300],
                            iconSize: 30,
                            icon: FaIcon(FontAwesomeIcons.twitter),
                            onPressed: () {})
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
