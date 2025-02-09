import 'package:flutter/material.dart';
import 'package:food_ordering_app/widgets/button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Validation"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: Column(
          children: [
            CustomInputFeild(label: "Email"),
            const SizedBox(height: 20),
            CustomInputFeild(
              label: "Password",
              isPass: true,
              type: TextInputType.text,
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
                height: 60,
                width: MediaQuery.of(context).size.width * 0.4,
                child: ElevatedButton(
                    onPressed: () {}, child: Text("Login",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      )
                    ),
                    ),),
          ],
        ),
      ),
    );
  }
}
