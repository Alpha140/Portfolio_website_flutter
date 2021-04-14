import 'package:flutter/material.dart';
import 'package:portfolio_website/constant.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[Text("2d illustrations and art".toUpperCase(),
          style: Theme.of(context).textTheme.headline1.copyWith(
              color: kTextColor,
            fontWeight: FontWeight.bold,
            fontSize: 36,
          ),
        ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Hello and welcome to my personal website!\n"
                "I am a 2D illustrator and artist with a lot of experience in both digital and physical art.\n"
                "If you would like to commission me, please use the button below to get started!",
              style: TextStyle(
                fontSize: 21,
                color: kTextColor.withOpacity(0.75),
              ),
            ),
          ),
          FittedBox(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(color: Color(0xFF372930),
                borderRadius: BorderRadius.circular(34),
              ),
              child: Row(
                children: <Widget>[
                  TextButton(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF372930),
                          shape: BoxShape.circle,
                      ),
                      ),
                    ),
                    onPressed: (){
                      //TODO: implement navigation to another widget which contains the second page
                    },
                  ),
                  SizedBox(width: 15,),
                  Text(
                    "Commission me".toUpperCase(),
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                    ),
                  ),
                  SizedBox(width: 15,)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
