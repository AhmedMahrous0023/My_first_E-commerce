import 'package:first_ecommerce/Components/my_button.dart';
import 'package:first_ecommerce/Components/template_input.dart';
import 'package:first_ecommerce/Components/tile_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  bool? checkboxValue = false;
  void checkboxFunction(value) {
    setState(() {
      checkboxValue = value;
    });
  }

  goSignUpScreen (){
    Navigator.pushNamed(context,"sign_up_screen") ;
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
                  "Welcome back!",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Login to your existing account",
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
                controller: _emailController,
                text: "Email Address",
                hintText: " name@example.com",
                prefixText: "e.g",
                obscureText: false,
              ),
              SizedBox(
                height: 14,
              ),
              TemplateInput(
                controller: _passwordController,
                text: "Password",
                hintText: " **********",
                prefixText: "e.g",
                obscureText: true,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 11),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Checkbox(
                          value: checkboxValue, onChanged: checkboxFunction),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 70),
                      child: Text("Remember me",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Text(
                        "Forgot Password",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Center(child: MyButton(text: "Login", onPressed: () {})),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 19),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TileImage(imageName: "assets/images/google_image.png"),
                    SizedBox(
                      width: 43,
                    ),
                    TileImage(imageName: "assets/images/facebook-image.png"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Dont have an acount? ",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    GestureDetector(
                      onTap: goSignUpScreen,
                      child: Text(
                        "Sign Up",
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
