import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final VoidCallback onPressed ;
  final String text ;
  const MyButton({super.key,required this.text,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      textColor: Colors.white,
      color: Colors.blue,
      minWidth: 345,
      height: 50,
      onPressed: onPressed,
       child: Text(text,style: TextStyle(fontSize: 17),),
       );
  }
}