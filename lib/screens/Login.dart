import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:taxc/screens/OTPScreen.dart';

import 'Register.dart';

// Define a custom Form widget.
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  LoginState createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();

  String name = "";
  String username = "";
  String email = "";
  String phone = "";
  String password = "";
  String confirmpassword = "";
  String type = "USER";

  void _submit() {
    var body = jsonEncode(<String, String>{
      'name': name,
      'username': username,
      'email': email,
      'phone': phone,
      'password': password,
      'type': type
    });
    createAccount(body)
        .then((user) => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OTPScreen(user)),
              )
            })
        .catchError((error) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(error.toString())),
      );
    });
  }

  Future<User> createAccount(body) async {
    final response = await http.post(
      // Uri.parse('http://192.168.1.8:3001/users'),
      Uri.parse('https://calm-reef-14808.herokuapp.com/users'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: body,
    );

    if (response.statusCode == 200) {
      User user = User.fromJson(jsonDecode(response.body));
      final prefs = await SharedPreferences.getInstance();

      await prefs.setString(
          'authorization', response.headers['authorization'].toString());
      await prefs.setString('username', user.username);

      return user;
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      return Future.error(jsonDecode(response.body)['message']);
    }
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    nameController.dispose();
    usernameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    confirmpasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xff0d1724),
        body: Container(
            padding: const EdgeInsets.fromLTRB(20.0, 100.0, 20.0, 20.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  Expanded(
                      child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
                          child: TextFormField(
                              controller: nameController,
                              style: const TextStyle(
                                  color: Color(0xffffffff), letterSpacing: 1),
                              decoration: const InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    // width: 0.0 produces a thin "hairline" border
                                    borderSide: BorderSide(
                                        color: Color(0xff4048bf), width: 1.0),
                                  ),
                                  border: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                    // width: 0.0 produces a thin "hairline" border
                                    borderSide: BorderSide(
                                        color: Color(0xff4048bf), width: 1.0),
                                  ),
                                  labelText: 'Enter your name',
                                  labelStyle:
                                      TextStyle(color: Color(0xff4048bf))),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your name.';
                                }
                                return null;
                              }))),
                  Expanded(
                      child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
                          child: TextFormField(
                              controller: usernameController,
                              style: const TextStyle(
                                  color: Color(0xffffffff), letterSpacing: 1),
                              decoration: const InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    // width: 0.0 produces a thin "hairline" border
                                    borderSide: BorderSide(
                                        color: Color(0xff4048bf), width: 1.0),
                                  ),
                                  border: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                    // width: 0.0 produces a thin "hairline" border
                                    borderSide: BorderSide(
                                        color: Color(0xff4048bf), width: 1.0),
                                  ),
                                  labelText: 'Enter your username',
                                  labelStyle:
                                      TextStyle(color: Color(0xff4048bf))),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your username.';
                                }
                                return null;
                              }))),
                  Expanded(
                      child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
                          child: TextFormField(
                              controller: emailController,
                              style: const TextStyle(
                                  color: Color(0xffffffff), letterSpacing: 1),
                              decoration: const InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    // width: 0.0 produces a thin "hairline" border
                                    borderSide: BorderSide(
                                        color: Color(0xff4048bf), width: 1.0),
                                  ),
                                  border: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                    // width: 0.0 produces a thin "hairline" border
                                    borderSide: BorderSide(
                                        color: Color(0xff4048bf), width: 1.0),
                                  ),
                                  labelText: 'Enter your email',
                                  labelStyle:
                                      TextStyle(color: Color(0xff4048bf))),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your email.';
                                }
                                return null;
                              }))),
                  Expanded(
                      child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
                          child: TextFormField(
                              controller: phoneController,
                              style: const TextStyle(
                                  color: Color(0xffffffff), letterSpacing: 1),
                              decoration: const InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    // width: 0.0 produces a thin "hairline" border
                                    borderSide: BorderSide(
                                        color: Color(0xff4048bf), width: 1.0),
                                  ),
                                  border: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                    // width: 0.0 produces a thin "hairline" border
                                    borderSide: BorderSide(
                                        color: Color(0xff4048bf), width: 1.0),
                                  ),
                                  labelText: 'Enter your phone',
                                  labelStyle:
                                      TextStyle(color: Color(0xff4048bf))),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your phone.';
                                }
                                return null;
                              }))),
                  Expanded(
                      child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
                          child: TextFormField(
                              controller: passwordController,
                              style: const TextStyle(
                                  color: Color(0xffffffff), letterSpacing: 1),
                              decoration: const InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    // width: 0.0 produces a thin "hairline" border
                                    borderSide: BorderSide(
                                        color: Color(0xff4048bf), width: 1.0),
                                  ),
                                  border: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                    // width: 0.0 produces a thin "hairline" border
                                    borderSide: BorderSide(
                                        color: Color(0xff4048bf), width: 1.0),
                                  ),
                                  labelText: 'Enter your password',
                                  labelStyle:
                                      TextStyle(color: Color(0xff4048bf))),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your password.';
                                }
                                return null;
                              }))),
                  Expanded(
                      child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
                          child: TextFormField(
                              controller: confirmpasswordController,
                              style: const TextStyle(
                                  color: Color(0xffffffff), letterSpacing: 1),
                              decoration: const InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    // width: 0.0 produces a thin "hairline" border
                                    borderSide: BorderSide(
                                        color: Color(0xff4048bf), width: 1.0),
                                  ),
                                  border: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                    // width: 0.0 produces a thin "hairline" border
                                    borderSide: BorderSide(
                                        color: Color(0xff4048bf), width: 1.0),
                                  ),
                                  labelText: 'Enter your confirm password',
                                  labelStyle:
                                      TextStyle(color: Color(0xff4048bf))),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your confirm password.';
                                }
                                if (value != passwordController.text) {
                                  return 'Password and Confirm Password does not match.';
                                }
                                return null;
                              }))),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );
                        name = nameController.text;
                        username = usernameController.text;
                        email = emailController.text;
                        phone = phoneController.text;
                        password = passwordController.text;
                        confirmpassword = confirmpasswordController.text;
                        _submit();
                      }
                    },
                    child: const Text('Accept & Continue'),
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all<Size>(
                          const Size.fromHeight(40)),
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          return const Color(
                              0xff4048bf); // Use the component's default.
                        },
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}
