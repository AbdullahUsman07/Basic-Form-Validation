import 'package:Form_Validation/model/HomeViewModel.dart';
import 'package:Form_Validation/model/usermodel.dart';
import 'package:Form_Validation/provider/userprovider.dart';
import 'package:Form_Validation/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController recheckcontroller = TextEditingController();

  FocusNode recheckFocusNode =FocusNode();

  HomeViewModel validation = HomeViewModel();
  UserModel user = UserModel(null, null, null);

  @override
  void dispose() {
    // TODO: implement dispose

    emailController.dispose();
    usernameController.dispose();
    passwordController.dispose();
    recheckcontroller.dispose();
    recheckFocusNode.dispose();

    super.dispose();
  }

  void _updateValidation() {
    setState(() {});
  }

  // this will use to reset the button after user click register button once

  bool _isRegistered = false;

  void _registerUser() {
    if (validation.isValid && _isRegistered == false) {
      setState(() {
        _isRegistered = true;
      });

      context.read<UserProvider>().setUserDetails(
          email: emailController.text,
          name: usernameController.text,
          password: passwordController.text);

          // this will remove the focus after user pressed the register button
      recheckFocusNode.unfocus(); 

      usernameController.clear();
      emailController.clear();
      passwordController.clear();
      recheckcontroller.clear();

      
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("SignUp"),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  CustomTextFeild(
                    labelText: 'Email',
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    onChanged: (value) {
                      validation.EmailValidate(value);
                      _updateValidation();
                    },
                    errorMsg: validation.email.error,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextFeild(
                    labelText: 'Username',
                    controller: usernameController,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextFeild(
                    labelText: 'Password',
                    controller: passwordController,
                    isPass: true,
                    onChanged: (value) {
                      validation.PasswordValidate(value);
                      _updateValidation();
                    },
                    errorMsg: validation.password.error,
                  ),
                  const SizedBox(height: 20),
                  CustomTextFeild(
                    labelText: 'Re-enter Password',
                    controller: recheckcontroller,
                    focusNode: recheckFocusNode,
                    isPass: true,
                    onChanged: (value) {
                      validation.RecheckPassword(value);
                      _updateValidation();
                    },
                    errorMsg: validation.recheck.error,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomButton(
                    title: 'Register',
                    onPressed: (_isRegistered || !validation.isValid)?null : _registerUser,
                  ),
                  const SizedBox(height: 30),
                  Container(
                    height: 100,
                    width: 300,
                    child: Center(
                        child: Text(
                            "Welcome ${context.watch<UserProvider>().username}",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold))),
                    color: Colors.blueAccent,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

