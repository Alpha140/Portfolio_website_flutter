import 'package:flutter/material.dart';
import 'package:portfolio_website/screens/components/app_bar.dart';

class PortfolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            Spacer(),
            //TODO: main body here
            Text("portfolio here"),
            Spacer(flex: 2,),
          ],
        ),
      ),
    );
  }
}
