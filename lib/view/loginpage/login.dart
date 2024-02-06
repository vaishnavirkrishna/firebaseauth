import 'package:flutter/material.dart';
import 'package:project360/view/signuppage/signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double hgt = MediaQuery.of(context).size.height;
    double wdt = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("LOGIN PAGE"),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "LOGIN",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a valid username';
                      }
                      return null;
                    },
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: "Email",
                      labelText: "Enter Username",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: hgt * 0.02,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty || value != 8) {
                        return "Please Enter a valid password";
                      }
                      return null;
                    },
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                        hintText: "Password",
                        labelText: "Enter Password",
                        border: OutlineInputBorder()),
                  ),
                  SizedBox(height: hgt * 0.08),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState?.validate() ?? false) {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return LoginPage();
                            }));
                          }
                        },
                        child: Text("Login")),
                  ),
                  SizedBox(height: hgt * 0.03),
                  InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUp(),
                          )),
                      child: Text("Dont you have an account? SIGNUP"))
                ],
              ),
            ),
          ),
        ));
  }
}
