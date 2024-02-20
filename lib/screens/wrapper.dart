import 'package:developers_forum/screens/authenticate/authenticate.dart';
// import 'package:developers_forum/screens/home/home.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    // Return Either home or auth
    return Authenticate();
  }
}
