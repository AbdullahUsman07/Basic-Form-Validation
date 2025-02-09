import 'package:flutter/material.dart';

class CustomInputFeild extends StatelessWidget {
   CustomInputFeild({
    super.key,
    required this.label,
    this.isPass=false,
    this.type= TextInputType.emailAddress,
    this.errorMsg,
    this.onChanged,

  });

  final String label;
  final bool isPass; // this will check if the textfeild is for entering password
  final TextInputType type;
  final String? errorMsg;
  void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      keyboardType: type,
      obscureText: isPass,
      decoration: InputDecoration(
        fillColor: Colors.grey.withOpacity(0.2),
        filled: true,
        label:Text(label),
        errorText: errorMsg,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
      ),
    );
  }
}