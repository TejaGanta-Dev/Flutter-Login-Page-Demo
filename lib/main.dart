import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Container(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // crossAxisAlignment: CrossAxisAlignment.,
              children: <Widget>[
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 40.0,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  getTextInputField(
                      Icons.person, 'Enter your username', 'Username'),
                  getTextInputField(
                      Icons.lock, 'Enter your Password', 'Password'),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "Forgot password?",
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(20),
                          child: TextButton(
                            style: TextButton.styleFrom(
                                foregroundColor: Colors.white,
                                padding: const EdgeInsets.all(16.0),
                                textStyle: const TextStyle(fontSize: 20),
                                backgroundColor: Colors.grey),
                            onPressed: () {},
                            child: const Text('LOGIN'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                      margin: const EdgeInsets.all(15),
                      child: const Center(child: Text("Or Sign Up Using"))),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      getIconData(Icons.facebook, Colors.blue[900]),
                      getIconData(Icons.facebook, Colors.blue[900]),
                      getIconData(Icons.facebook, Colors.blue[900]),
                    ],
                  ),
                ]),
                Column(
                  children: <Widget>[
                    const Center(child: Text('Or Sign Up Using')),
                    Container(
                        margin: const EdgeInsets.all(19),
                        child: const Center(child: Text('SIGN UP'))),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget getIconData(IconData icon, var color) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Icon(
        icon,
        color: color,
        size: 40.0,
      ),
    );
  }

  Widget getTextInputField(
      IconData prefixIcon, String hintText, String labelText) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: TextFormField(
        decoration: InputDecoration(
            prefixIcon: Icon(
              prefixIcon,
              color: Colors.grey[500],
            ),
            border: InputBorder.none,
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            hintText: hintText,
            hintStyle: const TextStyle(fontWeight: FontWeight.w400),
            labelText: labelText,
            labelStyle: const TextStyle(color: Colors.black)),
      ),
    );
  }
}
