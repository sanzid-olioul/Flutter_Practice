class Validator {
  String email_validator(value) {
    if (!value!.contains('@')) {
      return 'Please Enter a valid email';
    } else {
      return '';
    }
  }

  String password_validator(value) {
    if (value!.length < 4) {
      return 'Passward must have at least 4 charater';
    } else {
      return '';
    }
  }
}
