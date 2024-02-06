import 'package:flutter/material.dart';
import 'package:project360/view/loginpage/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: CircularProgressIndicator(color: Colors.blueGrey)),
          Container(
              height: 70,
              width: 90,
              child: Image.network(
                "https://th.bing.com/th/id/OIP.xBr6gMXQJ2r5ADv9PkohbAHaHa?rs=1&pid=ImgDetMain",
              ))
        ],
      ),
    );
  }
}
