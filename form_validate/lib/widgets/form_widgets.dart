import 'package:flutter/material.dart';
import '../mixins/email_pass_validator.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({Key? key}) : super(key: key);

  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> with Validator {
  final formKey = GlobalKey<FormState>();
  var email = '';
  var password = '';
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 50.0)),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'example@example.com',
              labelText: 'Email',
            ),
            validator: email_validator,
            onSaved: (newValue) {
              email = newValue!;
            },
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'password',
              labelText: 'Passward',
            ),
            validator: password_validator,
            onSaved: (newValue) {
              password = newValue!;
            },
          ),
          Padding(padding: EdgeInsets.only(top: 5.0)),
          MaterialButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                print('the mail ${email} and password ${password} are ');
              }
            },
            child: Text('Submit'),
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
