import 'package:flutter/material.dart';

class MyCardTemplate extends StatelessWidget {
  final TextEditingController controller ;
  const MyCardTemplate({super.key,required this.controller});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right: 7,left: 7),
        child: Container(
          height: 70,
          color: Colors.white,
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: "    _",hintStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.zero),
              )
            ),
          ),
        ),
      ),
    );
  }
}