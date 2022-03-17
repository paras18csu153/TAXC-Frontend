import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:taxc/screens/Dashboard.dart';
import 'package:taxc/screens/OTPScreen.dart';

import 'Details.dart';

// Define a custom Form widget.
class OTPScreen extends StatefulWidget {
  const OTPScreen(this.user, {Key? key}) : super(key: key);

  final User user;

  @override
  OTPScreenState createState() {
    return OTPScreenState();
  }
}

class OTPScreenState extends State<OTPScreen> {
  final _formKey = GlobalKey<FormState>();

  final otpController = TextEditingController();

  String otp = "";

  void _submit() async {
    print(otp);
    final prefs = await SharedPreferences.getInstance();

    var body = jsonEncode(<String, String>{
      'username': prefs.getString('username').toString(),
      'otp': otp
    });
    print(body);
    verifyAccount(body)
        .then((user) => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Dashboard()),
              )
            })
        .catchError((error) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(error.toString())),
      );
    });
  }

  Future<User> verifyAccount(body) async {
    final prefs = await SharedPreferences.getInstance();

    final response = await http.patch(
      Uri.parse('http://192.168.1.8:3001/users/verifyPhone'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'authorization': prefs.getString('authorization').toString()
      },
      body: body,
    );

    if (response.statusCode == 200) {
      return User.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      return Future.error(jsonDecode(response.body)['message']);
    }
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    otpController.dispose();
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
                              controller: otpController,
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
                                  labelText: 'Enter otp',
                                  labelStyle:
                                      TextStyle(color: Color(0xff4048bf))),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your otp.';
                                }
                                return null;
                              }))),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );
                        otp = otpController.text;
                        _submit();
                      }
                    },
                    child: const Text('Next'),
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
