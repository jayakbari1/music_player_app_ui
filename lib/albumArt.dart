import 'package:flutter/material.dart';
import 'package:music_player_app_ui/colors.dart';

class AlbumArt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      width: 260,
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
          child: Image.asset(
        'images/img.png',
        fit: BoxFit.fill,
      )),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
              color: darkPrimaryColor.withOpacity(0.5),
              offset: Offset(20, 8),
              spreadRadius: 3,
              blurRadius: 25),
          BoxShadow(
              color: Colors.white,
              offset: Offset(-3, -5),
              spreadRadius: -2,
              blurRadius: 20)
        ],
      ),
    );
  }
}