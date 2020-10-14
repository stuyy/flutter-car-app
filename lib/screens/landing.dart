import 'package:car_app/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final double fullHeight = MediaQuery.of(context).size.height;
    final double fullWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFA5001E),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFFF4387), Color(0xFFA5001E)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 100,
                  bottom: 50,
                  right: 20,
                  left: 20,
                ),
                child: Image(
                  image: AssetImage("assets/truck.png"),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 50,
                width: fullWidth * 0.90,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          blurRadius: 5,
                          offset: Offset(0, 1),
                          spreadRadius: 0.5
                      )
                    ]
                ),
                child: TextField(
                  autofocus: false,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 20, right: 20),
                      hintText: 'Email'
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 50,
                width: fullWidth * 0.90,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          blurRadius: 5,
                          offset: Offset(0, 1),
                          spreadRadius: 0.5
                      )
                    ]
                ),
                child: TextField(
                  autofocus: false,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 20, right: 20),
                    hintText: 'Password',

                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 25, top: 10, bottom: 5),
                alignment: Alignment.bottomRight,
                child: InkWell(
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {

                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5, bottom: 5),
                height: 50,
                width: fullWidth * 0.90,
                child: RaisedButton(
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  color: Colors.grey[800],
                  onPressed: () {
                    // Make API call and check credentials.
                    Navigator.pushNamed(context, '/dashboard');
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: fullWidth * 0.40,
                    child: Divider(
                      color: Colors.white,
                      thickness: 1,
                    ),
                  ),
                  Text(
                    'OR',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    width: fullWidth * 0.40,
                    child: Divider(
                      color: Colors.white,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                height: 50,
                width: fullWidth * 0.90,
                child: RaisedButton(
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  color: Colors.grey[800],
                  onPressed: () {
                    Navigator.pushNamed(context, '/register');
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40, bottom: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.google,
                          color: Colors.red[100],
                          size: 40,
                        ),
                        onPressed: () {

                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.facebook,
                          color: Colors.red[100],
                          size: 40,
                        ),
                        onPressed: () {

                        },
                      )
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.instagram,
                          color: Colors.red[100],
                          size: 40,
                        ),
                        onPressed: () {

                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.twitter,
                          color: Colors.red[100],
                          size: 40,
                        ),
                        onPressed: () {

                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}