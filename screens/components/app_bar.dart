import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/constant.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/screens/about_page.dart';
import 'package:portfolio_website/screens/commission_page.dart';
import 'package:portfolio_website/screens/contact_page.dart';
import 'package:portfolio_website/screens/home_screen.dart';
import 'package:portfolio_website/screens/portfolio_page.dart';

import 'menu_item.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(color: Colors.white,
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
          BoxShadow(
            offset: Offset(0,-2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.16),

          ),
        ],
      ),
      child: Row(
        children: <Widget>[Image.asset("assets/images/Logo.png",
          height: 25,
          alignment: Alignment.topCenter,
        ),
        SizedBox(width: 5),
          Text(
            "bluAura",
            style: GoogleFonts.lato(
                textStyle: TextStyle( fontSize: 22, fontWeight: FontWeight.bold,))

          ),
          Spacer(),
          MenuItem(
            title: "home",
            press: (){
              navigateToPageHome(context);
            },
          ),
          MenuItem(
            title: "about",
            press: (){
              navigateToPageAbout(context);
            },
          ),
          MenuItem(
            title: "portfolio",
            press: (){
              navigateToPagePortfolio(context);
            },
          ),
          MenuItem(
            title: "contact",
            press: (){
                navigateToPageContact(context);
            },
          ),
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue.shade300),
              overlayColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.hovered))
                      return Colors.blue.withOpacity(0.04);
                    if (states.contains(MaterialState.focused) ||
                        states.contains(MaterialState.pressed))
                      return Colors.blue.withOpacity(0.12);
                    return null;
                  }
              ),
            ),
              onPressed: (){

              },
              child: Text("  commission me  ".toUpperCase(),
                style: GoogleFonts.lato(
                  textStyle: TextStyle(fontWeight: FontWeight.bold)
                ),
              ),
          ),
        ],
      ),
    );
  }
  // kan waarschijnlijk beter worden herschreven tot een methode die materialpage route neemt?
  Future navigateToPageContact (context) async{
    Navigator.push(context, MaterialPageRoute (builder: (context) =>
        ContactPage())
    );
  }
  Future navigateToPageHome (context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) =>
        HomeScreen())
    );
  }
  Future navigateToPageAbout (context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) =>
        AboutPage())
    );
  }
  Future navigateToPagePortfolio (context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) =>
        PortfolioPage())
    );
  }
  Future navigateToPageCommissions(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) =>
        CommissionPage())
    );
  }
}

