import 'package:flutter/material.dart';
import 'package:flutter_app/Constants/color_palette.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeDetails extends StatefulWidget {
  final imgPath, headerColor;

  CoffeeDetails({this.imgPath, this.headerColor});

  @override
  _CoffeeDetailsState createState() => _CoffeeDetailsState();
}

class _CoffeeDetailsState extends State<CoffeeDetails> {

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
            color: Colors.transparent,
          ),
          Container(
            height: scrHeight,
            width: scrWidth,
            color: ColorPalette().leftBarColor,
          ),
          Container(
            height: scrHeight/2,
            width: scrWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(35.0),
                bottomRight: Radius.circular(35.0),
              ),
              color: Colors.white,
            ),
          ),
          Container(
            height: (scrHeight / 4 + 25.0),
            width: scrWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0),
              ),
              image: DecorationImage(
                    image: AssetImage('assets/doodle.png'), fit: BoxFit.none)),
          ),
          Container(
            height: (scrHeight / 4 + 25.0),
            width: scrWidth,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
                color: Colors.white.withOpacity(0.6)),
          ),
          Container(
            height: (scrHeight / 4 + 25.0),
            width: scrWidth,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
                color: widget.headerColor.withOpacity(0.9),
            ),
          ),
          Positioned(
            left: 20.0,
            top: 35.0,
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
          Positioned(
            right: 20.0,
            top: 35.0,
            child: Icon(
              Feather.shopping_bag,
              color: Colors.white,
            ),
          ),
          Positioned(
            top: (scrHeight / 4 - 100),
            left: scrWidth /4,
            child: Hero(
              tag: widget.imgPath,
              child: Image(
                image: AssetImage(widget.imgPath),
                height: 175.0,
                width: 175.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: (scrHeight / 4 + 85.0),
            left: scrWidth /7,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Grady\s COLD BREW',
                  style: GoogleFonts.bigShouldersText(
                    color: Color(0xFF23163D),fontSize: 24.0),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Feather.user),
                      SizedBox(width: 10.0,),
                      Text(
                        '1.5k',
                        style: GoogleFonts.bigShouldersText(
                            color: ColorPalette().firstSlice,fontSize: 20.0),
                      ),
                      SizedBox(width: 15.0,),
                      Container(
                        width: 1.0,
                        height: 20.0,
                        color: Colors.grey,
                      ),

                      Icon(Feather.star),
                      SizedBox(width: 10.0,),
                      Text(
                        '4.0k',
                        style: GoogleFonts.bigShouldersText(
                            color: ColorPalette().firstSlice,fontSize: 20.0),
                      ),
                      SizedBox(width: 15.0,),
                      Container(
                        width: 1.0,
                        height: 20.0,
                        color: Colors.grey,
                      ),

                      Icon(Feather.anchor),
                      SizedBox(width: 10.0,),
                      Text(
                        'No. 1',
                        style: GoogleFonts.bigShouldersText(
                            color: ColorPalette().firstSlice,fontSize: 20.0),
                      ),
                      SizedBox(width: 15.0,),
                      Container(
                        width: 1.0,
                        height: 20.0,
                        color: Colors.grey,
                      ),
                    ],
                  )

                ],
              ),
            ),
          ),
          Positioned(
            top: scrHeight / 2 + 10.0,
            left: 25.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'About Us',
                  style: GoogleFonts.bigShouldersText(
                      color: Color(0xFF23163D), fontSize: 30.0),
                ),
                SizedBox(height: 10.0),
                Container(
                  width: scrWidth - 50.0,
                  child: Text(
                    'Cold brewed with chicory and a unique blend of spices for 20 hours, our concentrate is velvety-smooth and packed with flavor.',
                    style: GoogleFonts.bigShouldersText(
                        color: Color(0xFFB5ABB8), fontSize: 15.0),
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                    height: 150.0,
                    width: scrWidth,
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          buildOneItem('\$65'),
                          SizedBox(width:20.0),
                          buildOneItem('\$120.0'),
                          SizedBox(width: 20.0)
                        ]
                    )
                ),
                Row(
                    children: [
                      Container(
                          height: 50.0,
                          width: 225.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: ColorPalette().buttonColor
                          ),
                          child: Center(
                              child: Text('BUY NOW',
                                style: GoogleFonts.bigShouldersText(
                                    color: Colors.white, fontSize: 20.0),
                              )
                          )
                      ),
                      SizedBox(width: 25.0),
                      Container(
                          height: 50.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                  color: ColorPalette().buttonColor,
                                  width: 2.0
                              )
                          ),
                          child: Center(
                              child: Icon(Feather.bookmark, size:17.0)
                          )
                      )
                    ]
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  buildOneItem(price) {
    return Stack(
        children: [
          Container(height: 125.0, width: 200.0, color:Colors.transparent),
          Positioned(
              top: 50.0,
              child: Container(
                height:75.0,
                width: 200.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 4.0,
                          spreadRadius: 2.0,
                          color: Colors.grey.withOpacity(0.2)
                      )
                    ],
                    color: Colors.white
                ),
              )
          ),
          Positioned(
              right: 5.0,
              child: Container(
                  height:100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/coffee3.png'),
                          fit: BoxFit.cover
                      )
                  )
              )
          ),
          Positioned(
              left:10.0,
              top:60.0,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      price,
                      style: GoogleFonts.bigShouldersText(
                          color: ColorPalette().firstSlice, fontSize: 25.0),
                    ),
                    Text(
                      'COLD BREW KIT',
                      style: GoogleFonts.bigShouldersText(
                          color: Color(0xFF23163D), fontSize: 20.0),
                    )
                  ]
              )
          )
        ]
    );
  }
}
