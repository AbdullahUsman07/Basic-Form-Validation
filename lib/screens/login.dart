import 'package:Form_Validation/model/HomeViewModel.dart';
import 'package:Form_Validation/widgets.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  HomeViewModel validation = HomeViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextFeild(
              labelText: "Email",
              onChanged: (value){
                validation.EmailValidate(value);
                setState(() {
                  
                });
              },
              errorMsg: validation.email.error,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextFeild(
              labelText: "Password",
              onChanged: (value){
                validation.PasswordValidate(value);
                setState(() {
                  
                });
              },
              errorMsg: validation.password.error,
            ),
            const SizedBox(
              height: 25,
            ),
            CustomButton(title: 'Login',
            onPressed: validation.isValid? (){}: null,),
          ],
        ),
      ),
    );
  }
}
