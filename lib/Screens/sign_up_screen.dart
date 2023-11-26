import 'package:first_ecommerce/Components/my_button.dart';
import 'package:first_ecommerce/Components/template_input.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _userNameController = TextEditingController();

  _goSignInscreen (){
    Navigator.pushReplacementNamed(context, "sign_in_page");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              ListTile(
                title: Text(
                  "Sign up",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Please enter your information below to sign up",
                    style: TextStyle(
                      fontSize: 17,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 19),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/logo_image.png",
                      width: 210,
                    )
                  ],
                ),
              ),
              TemplateInput(
                controller: _userNameController,
                text: "Name",
                hintText: " Please enter your name",
                prefixText: "e.g",
                obscureText: false,
              ),
              SizedBox(
                height: 14,
              ),
              TemplateInput(
                controller: _emailController,
                text: "Email",
                hintText: " Please enter your email",
                prefixText: "e.g",
                obscureText: false,
              ),
              SizedBox(
                height: 14,
              ),
              TemplateInput(
                controller: _passwordController,
                text: "Password",
                hintText: " Please enter your password",
                prefixText: "e.g",
                obscureText: true,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child:
                    Center(child: MyButton(text: "Sign up", onPressed: () {})),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account ? ",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: 6,),
                     GestureDetector(
                      onTap: _goSignInscreen,
                       child: Text(
                        "Sign in ",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                                           ),
                     ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
