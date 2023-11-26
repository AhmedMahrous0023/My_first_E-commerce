import 'package:flutter/material.dart';

class TemplateInput extends StatelessWidget {
  final String text;
  final String hintText;
  final String prefixText;
  final bool obscureText ;
  TextEditingController controller ;

   TemplateInput(
      {super.key,
      required this.text,
      required this.hintText,
      required this.prefixText,
      required this.obscureText,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 14, left: 30),
          child: Row(
            children: [
              Text(
                text,
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 19,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: TextField(
            controller: controller,
            obscureText: obscureText,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(13),
                  borderSide:
                      BorderSide(color: Colors.white, style: BorderStyle.none)),
              hintText: hintText,
              hintStyle: TextStyle(color: Colors.grey),
              prefix: Text(prefixText),
            ),
          ),
        ),
      ],
    );
  }
}
