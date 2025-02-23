

import 'package:Form_Validation/model/validationmodel.dart';
import 'package:Form_Validation/string_extension.dart';

class HomeViewModel {

  ValidationModel email = ValidationModel(null, null);
  ValidationModel password = ValidationModel(null, null);
  ValidationModel recheck = ValidationModel(null, null);

  bool get isValid => email.value != null && password.value !=null && recheck.value == password.value;

  EmailValidate(String value){
    if(value.isvalidEmail){
      email.value =value;
      email.error =null;
    }
    else{
      email.error ="Kindly add valid email";
    }
  }

  PasswordValidate(String value){
    if(value.isvalidPassword){
      password.value=value;
      password.error =null;
    }
    else{
      password.error = "Password must be 8 characters long";
    }
  }

  RecheckPassword(String value){
    if(value == password.value){
      recheck.error =null;
      recheck.value=value;
    }
    else{
      recheck.error ="Password doesn't match";
    }
  }
}