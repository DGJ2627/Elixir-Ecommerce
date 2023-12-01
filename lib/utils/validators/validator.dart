class Validator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is Required';
    }

    final emailRegExp = RegExp(r'^[\w-\.] + @([\w-]+\.) + @([\w-]{2,4})$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email Address';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is Required';
    }

    if(value.length < 6){
      return 'Password must be at least ^ characters long.';
    }

    if(!value.contains(RegExp(r'[A-Z]'))){
      return 'Password must be at least one uppercase letter';
    }

    if(!value.contains(RegExp(r'[0-9]'))){
      return 'Password must be at least one number';
    }

    if(!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))){
      return 'Password must be at least one special character';
    }
    return null;
  }


  static String? validatePhoneNUmber(String? value){

    if (value == null || value.isEmpty) {
      return 'Phone Number is Required';
    }

    final phoneRegExp = RegExp(r'^\d{10}$');

    if(!phoneRegExp.hasMatch(value)){
      return 'Invalid phone number format (10 digit required) ';
    }
    return null;
  }
}
