
import 'package:Form_Validation/model/usermodel.dart';
import 'package:flutter/material.dart';


class UserProvider extends ChangeNotifier{

    UserModel user =UserModel("User", null, null);

    String? get username => user.name;

    void setUserDetails({required String email, required String name, required String password}){
        user.email =email;
        user.name=name;
        user.password=password;

        notifyListeners();
    }
}