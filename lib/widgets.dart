

// Custom Text Feild

import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  CustomTextFeild({
    super.key,
    this.hintText,
    this.labelText,
    this.controller,
    this.keyboardType,
    this.onChanged,
    this.errorMsg,
    this.isPass=false,
    this.focusNode,
  });

  String? hintText;
  String? labelText;
  TextEditingController? controller;
  TextInputType? keyboardType = TextInputType.text;
  void Function(String)? onChanged;
  String? errorMsg;
  bool isPass;
  FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      onChanged: onChanged,
      obscureText: isPass,
      focusNode: focusNode,
      decoration: InputDecoration(
        enabled: true,
        hintText: hintText,
        labelText: labelText,
        errorText: errorMsg,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red)
        )
        
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
    CustomButton({
    super.key,
    required this.title,
    required this.onPressed,
    
  });

  String title = "";
  void Function()? onPressed;


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style:ElevatedButton.styleFrom(
        backgroundColor: Colors.blueAccent,
        foregroundColor:Colors.black,
      ),
     child: Text(title,style: const TextStyle(
      fontWeight: FontWeight.bold,
     ),));
  }
}