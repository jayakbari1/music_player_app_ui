import 'package:flutter/material.dart';
import 'package:music_player_app_ui/albumArt.dart';
import 'package:music_player_app_ui/colors.dart';
import 'package:music_player_app_ui/navBar.dart';
import 'package:music_player_app_ui/playerControls.dart';

void main() =>
    runApp(MaterialApp(
      theme: ThemeData(fontFamily: 'Circular'),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  double sliderValue = 2;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;



    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          NavigationBar(),
          Container(
            height: height / 2.5,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return AlbumArt();
                }),
          ),
          Text(
            'Gidget',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: darkPrimaryColor,
            ),
          ),
          Text(
            'The Free Nationals',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: darkPrimaryColor,
            ),
          ),
          SliderTheme(
            data: SliderThemeData(
              trackHeight: 5,
              thumbShape: RoundSliderThumbShape(
                enabledThumbRadius: 7,
              ),
            ),
            child: Slider(
              activeColor: darkPrimaryColor,
                inactiveColor: darkPrimaryColor.withOpacity(0.3),
                value: sliderValue,
                max: 20,
                min: 0,
                onChanged:(value){
                  setState(() {
                    sliderValue = value;
                  });
            }
            ),
          ),
          playerControls(),

          SizedBox(height: 100,),
        ],
      ),
    );
  }
}
