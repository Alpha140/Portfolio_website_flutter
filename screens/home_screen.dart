import 'package:flutter/material.dart';
import 'package:portfolio_website/screens/components/app_bar.dart';
import 'package:portfolio_website/screens/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // size provides total height and width
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover,
        )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          CustomAppBar(),
          Spacer(),
          Body(),
            Spacer(flex: 2,),
          ],
        ),
      ),
    );
  }
}
