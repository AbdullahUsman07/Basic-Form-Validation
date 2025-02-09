

import 'package:Form_Validation/extensions/string_extension.dart';
import 'package:Form_Validation/models/validation_model.dart';

class HomeViewModel{

  ValidationModel email= ValidationModel(null, null);
  ValidationModel password = ValidationModel(null, null);

  bool get isValid => email != null && password !=null;

  EmailValidate(String value){
    if(value.isvalidEmail){
      email.value=value;
      email.error=null;
    }
    else{
      email.error= "Please Enter a Valid Email";
    }
  }

  PasswordValidate(String value){
    if(value.isvalidPassword){
      password.value=value;
      password.error=null;
    }
    else{
      password.error= "Password Must be 8 characters Long";
    }
  }

}