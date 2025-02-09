import 'package:Form_Validation/screens/homeview_model.dart';
import 'package:Form_Validation/widgets/button.dart';
import 'package:Form_Validation/widgets/loginbutton.dart';
import 'package:flutter/material.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  HomeViewModel validation = HomeViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Validation"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: Column(
          children: [
            CustomInputFeild(
              label: "Email",
              onChanged: (value) {
                validation.EmailValidate(value);
                setState(() {});
              },
              errorMsg: validation.email.error,
            ),
            const SizedBox(height: 20),
            CustomInputFeild(
              label: "Password",
              isPass: true,
              type: TextInputType.text,
              onChanged: (value) {
                validation.PasswordValidate(value);
                setState(() {});
              },
              errorMsg: validation.password.error,
            ),
            const SizedBox(
              height: 30,
            ),
            Loginbutton(
              onPressed: validation.isValid ? () {} : null,
            ),
          ],
        ),
      ),
    );
  }
}