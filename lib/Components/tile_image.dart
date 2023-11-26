import 'package:flutter/material.dart';

class TileImage extends StatelessWidget {
  final String imageName ;
  const TileImage({super.key,required this.imageName});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 21,
      backgroundColor:Colors.white ,
      child: Expanded(child: Image.asset(imageName)),
    );
  }
}