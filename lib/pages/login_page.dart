import 'package:flutter/material.dart';
import 'package:flutter_api/utils/Constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Login"),
        backgroundColor: Colors.purple,
      ),
      body:  Padding(
        padding: const EdgeInsets.all(20),
        child: Card(
          // color: Colors.black12,
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TextField(
                  decoration: InputDecoration(
                    hintText: "Enter Username",
                    labelText: "Username",
                    border: OutlineInputBorder()
                  ),
                ),
                const SizedBox(height: 20,),
                const TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    labelText: "Password",
                    border: OutlineInputBorder()
                  ),
                ),
                const SizedBox(height: 20,),
                FilledButton(
                    onPressed: (){
                      Constants.prefs?.setBool("logged", true);
                      Navigator.pushReplacementNamed(context, "/home");
                    },
                    child: const Text("LogIn")
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
