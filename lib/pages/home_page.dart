import 'package:flutter/material.dart';
import 'package:payment_appliction/components/colors.dart';
import 'package:payment_appliction/widgets/text_size.dart';
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
             _headSection(),
             _listBills(),
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
      bottom: 10.0,
      left: 0.0,
      child: Container(
        height: 300.0,
        width: MediaQuery.of(context).size.width,
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
      bottom: 10,
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
      bottom: 5.0,
      right: 50.0,
      child: Container(
        height: 50.0,
        width: 50.0,
        decoration:  BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 15.0,
              offset: Offset(0,-1),
              color: Color(0XFF11324D).withOpacity(0.2),
            ),
          ],
          image: const DecorationImage(
            image: AssetImage('images/lines.png')
          )
        ),
      ),
    );
  }

  _listBills(){
    return Positioned(
      top: 320.0,
      child: Container(
        height: 100.0,
        width: MediaQuery.of(context).size.width -20,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(15.0) , bottomRight: Radius.circular(15.0)),

          boxShadow: [
            BoxShadow(
              color: Color(0XFFd8dbe0),
              offset: Offset(1 , 1),
              blurRadius: 20.0,
              spreadRadius: 10.0,

            )
          ]
        ),
        child: Container(
          margin: const EdgeInsets.only(top: 10.0 , left: 18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children:[
                      Container(
                        height: 60.0,
                        width: 60.0,
                        decoration:  BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/brand1.png'),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(
                            width: 3.0,
                            color: Colors.grey
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      SizedBox(width: 10.0,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('KenGen Power',style: TextStyle(fontSize: 16.0 , color:AppColor.mainColor ,fontWeight: FontWeight.w700),),
                          SizedBox(height: 10.0,),
                          Text('ID : 854123',style: TextStyle(fontSize: 16.0 , color:Color(0xFF9ca2ac) ,fontWeight: FontWeight.w700),)
                        ],
                      ),

                    ],
                  ),
                  SizedText(
                    text: 'Auto Pay on 24th May',
                    color: AppColor.green,),
                  SizedBox(height: 5.0,),

                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 80.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: AppColor.selectBackground
                        ),
                        child: Center(
                          child:Text('Select',style: TextStyle(color: AppColor.selectColor),),
                        )
                      ),
                      const Text('\$1248.00',style: TextStyle(color: AppColor.mainColor,fontSize: 18.0 , fontWeight: FontWeight.bold),),
                      SizedBox(height: 10.0,),
                      Text('Due in 3 Days',style: const TextStyle(color: Color(0xFF9ca2ac),fontSize: 14.0 , fontWeight: FontWeight.w700),),
                    ],
                  ),
                  Container(
                    width: 5.0,
                    height: 35.0,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                         topLeft: Radius.circular(30.0),
                         bottomLeft: Radius.circular(30.0),
                      ),
                      color:Color(0xFF646f80),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

}
