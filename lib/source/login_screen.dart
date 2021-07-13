import 'package:flutter/material.dart';
import 'validation.dart';

class LoginScreen extends StatefulWidget {
  createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> with ValidMixin {
  bool hidden = true;
  final formKey = GlobalKey<FormState>();

  String emailey = '';
  String password = '';

  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            Container(margin: EdgeInsets.only(top: 40.0)),
            emailEntry(),
            Container(margin: EdgeInsets.only(top: 20.0)),
            passwordEntry(),
            Container(margin: EdgeInsets.only(top: 20.0)),
            submitButton(),
          ],
        ),
      ),
    );
  }

  //        Email entry

  Widget emailEntry() {
    return TextFormField(
      //calls emailvalid function
      //in validation file
      validator: emailvalid,

      onSaved: (String email) {
        //prints the email string on
        //my terminal
        //print(email);
        emailey = email;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.blue,
            width: 60.0,
            //style: BorderStyle.none(),
          ),
        ),
        prefixIcon: Icon(Icons.mail),
        labelText: 'E-mail',
        labelStyle: TextStyle(fontSize: 20.0, color: Colors.blue),
        hintText: 'enter a valid e-mail address',
      ),
    );
  }

  //    Password entry

  Widget passwordEntry() {
    return TextFormField(
      validator: passwordvalid,
      onSaved: (String pass) {
        //prints the password
        //on termial
        //print(pass);
        password = pass;
      },
      obscureText: hidden,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.blue,
            width: 60.0,
            //style: BorderStyle.none(),
          ),
        ),
        prefixIcon: Icon(Icons.lock),
        labelText: 'Password',
        labelStyle: TextStyle(fontSize: 20.0, color: Colors.blue),
        hintText: 'enter a strong password',
        suffixIcon: IconButton(
          icon: hidden ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
          onPressed: showhide,
        ),
      ),
    );
  }

  Widget submitButton() {
    return ElevatedButton(
      child: Text('Submit!'),
      onPressed: () {
        if (formKey.currentState.validate()) {
          formKey.currentState.save();
          print('Are you dumb? $emailey & $password');
        }
      },
    );
  }

  void showhide() {
    if (hidden == true) {
      hidden = false;
    } else {
      hidden = true;
    }

    setState(() {});
  }
}
