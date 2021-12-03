import 'package:flutter/material.dart';
import 'package:payment_appliction/components/colors.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: Container(
         height: h,
         child: Stack(
           children: [
             _headSection()
           ],
         ),
      ),
    );
  }

  _headSection(){
    return Container(
      height: 310.0,

      child: Stack(
        children: [
          _mainBackground(),
          _curveImageContainer(),
          _buttonContainer(),
        ],
      ),
    );
  }

  _mainBackground(){
    return Positioned(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.png'),
            fit: BoxFit.cover,
          )
        ),
      ) ,
    );
  }
  _curveImageContainer(){
    return Positioned(
      left: 0,
      right: -10,
      bottom: 0,
      child: Container(
        height: MediaQuery.of(context).size.height*0.1,
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/curve.png'),
              fit: BoxFit.cover,
            )
        ),
      ),
    );
  }
  _buttonContainer(){
    return Positioned(
      child: Container(
        decoration:  BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 15.0,
              offset: Offset(0,-1),
              color: Color(0XFF11324D).withOpacity(0.2),

            )
          ]
        ),
      ),
    );
  }

}
