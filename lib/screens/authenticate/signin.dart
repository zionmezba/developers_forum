import 'package:developers_forum/services/auth.dart';
import 'package:flutter/material.dart';

class SignIN extends StatefulWidget {
  const SignIN({super.key});

  @override
  State<SignIN> createState() => _SignINState();
}

class _SignINState extends State<SignIN> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final AuthService _auth = AuthService();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 61, 61, 61),
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text("Sign in to Dev's Forum"),
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        child: TextButton(
          child: Text("Sign In Anon"),
          onPressed: () async {
            dynamic result = await _auth.signInAnon();
            if (result == null) {
              print("Error Signing In");
            } else {
              print("Signed In: ");
              print(result);
            }
          },
        ),
      ),
    );
  }
}
