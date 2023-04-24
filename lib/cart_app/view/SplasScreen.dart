import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      Navigator.of(context).pushReplacementNamed('/');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:  Colors.deepPurple,
      body: Stack(
        children:[ Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: CircleAvatar(radius: 140,backgroundImage: AssetImage('assets/images/Splash.jpeg'),)
              ),

              Text(
                "    Enjoy\nYour Food",
                style: TextStyle(fontSize: 45,color: Colors.white),
              ),
            ],
          ),
        ),],
      ),
    );
  }
}