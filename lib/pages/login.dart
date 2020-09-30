import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email;
  String password;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              FlutterLogo(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "Login Here!!",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.90,
                child: Form(
                    key: formkey,
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Email",
                          ),
                          validator: (_val) {
                            if (_val.isEmpty) {
                              return "Can't be empty";
                            } else {
                              return null;
                            }
                          },
                          onChanged: (val) {
                            email = val;
                          },
                        ),
                        Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15.0))
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
