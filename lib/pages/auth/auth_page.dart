import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../layout/back_layout.dart';

class AuthPage extends StatefulWidget {
  static const String route = "/AuthPage";
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  late double height, width;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        height = constraints.maxHeight;
        width = constraints.maxWidth;
        return Scaffold(
          body: _buildBody(),
        );
      },
    );
  }

  _buildBody() {
    return BackLayout(
      size: Size(width, height),
      child: Stack(
        children: [
          Image.asset(
            "assets/bg.jpg",
            fit: BoxFit.cover,
            width: double.infinity,
            height: height,
          ),
          _getButtons(),
        ],
      ),
    );
  }

  _getButtons() {
    return Container(
      height: height,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(),
          Icon(
            MdiIcons.heartBroken,
            color: Colors.white,
            size: 40,
          ),
          _getRichText(),
          Spacer(),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 0.075 * height,
              width: 0.8 * width,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(30.0)),
              child: Center(
                child: Text(
                  "Sign Up",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 0.075 * height,
              width: 0.8 * width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.white,
              ),
              child: Center(
                child: Text(
                  "Log in",
                  style: TextStyle(color: Colors.lightBlueAccent, fontSize: 20),
                ),
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }

  RichText _getRichText() {
    return RichText(
      text: TextSpan(
        style: GoogleFonts.poppins(fontSize: 26),
        children: [
          TextSpan(
            text: "heart",
            style: TextStyle(
              fontWeight: FontWeight.w100,
            ),
          ),
          TextSpan(
            text: " link",
            style: TextStyle(
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}
