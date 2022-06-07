import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:senior/app/modules/login/views/background_view.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: GetBuilder<LoginController>(
        builder: (controller) => BackgroundView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2661FA),
                      fontSize: 36
                  ),
                  textAlign: TextAlign.left,
                ),
              ),

              SizedBox(height: size.height * 0.03),

              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                      labelText: "Email"
                  ),
                ),
              ),

              SizedBox(height: size.height * 0.03),

              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                      labelText: "Password"
                  ),
                  obscureText: true,
                ),
              ),

              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: Text(
                  "Forgot your password?",
                  style: TextStyle(
                      fontSize: 12,
                      color: Color(0XFF2661FA)
                  ),
                ),
              ),

              SizedBox(height: size.height * 0.05),

              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: RaisedButton(
                  onPressed: () {
                    controller.login(emailController.text, passwordController.text);
                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50.0,
                    width: size.width * 0.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80.0),
                        gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 255, 136, 34),
                              Color.fromARGB(255, 255, 177, 41)
                            ]
                        )
                    ),
                    padding: const EdgeInsets.all(0),
                    child: Text(
                      "LOGIN",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),

              // Container(
              //   alignment: Alignment.centerRight,
              //   margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              //   child: GestureDetector(
              //     onTap: () => {
              //
              //     },
              //     child: Text(
              //       "Don't Have an Account? Sign up",
              //       style: TextStyle(
              //           fontSize: 12,
              //           fontWeight: FontWeight.bold,
              //           color: Color(0xFF2661FA)
              //       ),
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
