import 'package:bmi_calculate/modules/bmi/bmi.dart';
import 'package:flutter/material.dart';

import '../../componant/componats.dart';

class LoginScreen extends StatelessWidget {
  static String routName = 'Login';

  var formKey = GlobalKey<FormState>();

  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Login',
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              DefaultFormField(
                controller: emailController,
                type: TextInputType.emailAddress,
                validate: (String value) {
                  if (value.isEmpty) {
                    return "Email Must Not Be Empty";
                  }
                  return null;
                },
                label: "Please Enter Your Email",
                prefixIcon: Icons.email,
              ),
              SizedBox(height: 20),
              DefaultFormField(
                controller: passwordController,
                type: TextInputType.text,
                validate: (String value) {
                  // if (value.isEmpty) {
                  //   return "Password Must Not Be Empty";
                  // }
                  // return null;
                  value.isEmpty ? 'Password cannot be blank' : null;
                },
                label: "Please Enter Your Password",
                prefixIcon: Icons.lock,
                safixIcon: Icons.remove_red_eye,
              ),
              SizedBox(height: 20),
              Container(
                child: DefaultBotton(
                    isUpperCase: true,
                    text: "Login",
                    function: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.pushReplacementNamed(
                            context, BmiScreen.routeName);
                      }
                    },
                    width: double.infinity),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account ? ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                  TextButton(onPressed: () {}, child: Text('Register Now'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
