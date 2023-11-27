import 'package:first_ecommerce/components/my_button.dart';
import 'package:first_ecommerce/components/my_card_template.dart';
import 'package:flutter/material.dart';

class VerficationScreen extends StatefulWidget {
  const VerficationScreen({super.key});

  @override
  State<VerficationScreen> createState() => _VerficationScreenState();
}

class _VerficationScreenState extends State<VerficationScreen> {
  TextEditingController _codeOne =TextEditingController();
    TextEditingController _codeTwo =TextEditingController();
  TextEditingController _codeThree =TextEditingController();
  TextEditingController _codeFourth =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.0,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18, bottom: 19),
              child: Text(
                "Verification",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, bottom: 21),
              child: Text(
                "Please enter the OTP code sent to you by SMS",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 37,
                ),
                MyCardTemplate(controller: _codeOne),
                MyCardTemplate(controller: _codeTwo),
                MyCardTemplate(controller: _codeThree),
                MyCardTemplate(controller: _codeFourth),
                SizedBox(
                  width: 37,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 29, bottom: 110),
              child: Center(
                  child: Text(
                "Didnt get a code ? Send again",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[500],
                ),
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 170),
              child: Center(child: MyButton(text: "Verify", onPressed: () {})),
            )
          ],
        ),
      ),
    );
  }
}
