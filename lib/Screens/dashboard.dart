
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Constants/color_palette.dart';
import 'package:flutter_app/Screens/black_gold.dart';
import 'package:flutter_app/Screens/cold_brew.dart';
import 'package:flutter_app/Screens/gold_brew.dart';
import 'package:flutter_app/Screens/mccafe.dart';
import 'package:flutter_app/Screens/nescafe.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardPage extends StatefulWidget {


  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {

  final ColorPalette _colorPalette = ColorPalette();

  var _selectedOpt = 0;
  List allOpt = [Goldbrew(), Coldbrew(), Nescafe(), Mccafe(), Blackgold()];
  List isSelected = [true, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    // get Screen width ANd Height
    var scrHeight = MediaQuery.of(context).size.height;
    var scrWidth = MediaQuery.of(context).size.width;



    return Scaffold(
      body: Stack(
        children: [
          Container(
              height: scrHeight,
              width: scrWidth,
              color: Colors.transparent),
          Container(
              height: scrHeight,
              width: scrWidth / 5,
              color: _colorPalette.leftBarColor),
          Positioned(
              left: scrWidth / 5,
              child: Container(
                height: scrHeight,
                width: scrWidth - (scrWidth / 5),
                color: Colors.white,
              )),
          Positioned(top: 35.0, left: 20.0, child: Icon(Feather.menu)),
          Positioned(top: 35.0, right: 20.0, child: Icon(Feather.shopping_bag)),
          Positioned(
            top: scrWidth-(scrWidth-100.0),
            left: (scrWidth/5)+25.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'CoffeeHouse',
                  style: GoogleFonts.bigShouldersText(
                    color: Color(0xFF23163D),
                    fontSize: 40.0
                  ),
                ),
                Text(
                  'A lot can happen over Coffee',
                  style: GoogleFonts.bigShouldersText(
                    color: Color(0xFFA59FB0),
                    fontSize: 15.0
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  height: 40.0,
                  width: 255.0,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(
                          color: Colors.grey.withOpacity(0.4)
                        )
                      ),
                      contentPadding: EdgeInsets.only(top: 10.0,left: 10.0),
                      hintText: 'Search...',
                      hintStyle: GoogleFonts.bigShouldersText(
                        color: Color(0xFFA59FB0),fontSize: 15.0
                      ),
                        suffixIcon: Icon(
                            Icons.search,
                            color: Colors.grey.withOpacity(0.4),
                          )),
                  ),
                )
              ],
            )
          ),
          buildSideNavigator(),
          Positioned(
              top: (scrHeight / 3) + 5.0,
              left: (scrWidth / 5) + 25.0,
              child: Container(
                  height: scrHeight - ((scrHeight / 3) + 50.0),
                  width: scrWidth - ((scrWidth / 5) + 40.0),
                  child: allOpt[_selectedOpt]
              )
          )
        ],
      ),
    );
  }

  buildSideNavigator() {
    return Positioned(
      top: 75.0,
      child: RotatedBox(
        quarterTurns: 3,
        child: Container(
          width: MediaQuery.of(context).size.height-100.0,
          height: MediaQuery.of(context).size.width/5.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildOption("Black Gold",0),
              buildOption("Cold Brew",1),
              buildOption("Nescafe",2),
              buildOption("Mcafe",3),
              buildOption("Gold Brew",4),
            ],
          ),
        ),
      ),
    );
  }

  buildOption(String titlle, int index) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        isSelected[index] ? Container(
          width: 8.0,
          height: 8.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFF23163D)
          ),
        ): Container(
          width: 8.0,
          height: 8.0,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent
          ),
        ),
        SizedBox(height: 5.0),
        GestureDetector(
          onTap: (){
            setState(() {
              _selectedOpt = index;
              isOptSelected(index);
            });
          },
          child: Text(titlle,
              style: isSelected[index]
                  ? GoogleFonts.bigShouldersText(
                      color: Color(0xFF23163D), fontSize: 18.0)
                  : GoogleFonts.bigShouldersText(
                      color: Color(0xFFA59FB0), fontSize: 17.0)),
        )
      ],
    );
  }

  isOptSelected(int index){
    var prvIndex = isSelected.indexOf(true);
    isSelected[index] = true;
    isSelected[prvIndex] = false;
  }

}

