import 'package:flutter/material.dart';
class SizedText extends StatelessWidget {

  final String text;
  final Color color;

  const SizedText({Key? key, required this.text, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Container(
      child: Column(
        children: [
                Text(text , style: TextStyle(fontSize: 16.0 , color: color , fontWeight: FontWeight.w700),
                maxLines: 1,
                 softWrap: true,
                 overflow: TextOverflow.clip,

                ),


        ],
      ),
    );
  }



}
