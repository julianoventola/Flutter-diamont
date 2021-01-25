import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diamont',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MySplashScreen(),
    );
  }
}

class MySplashScreen extends StatefulWidget {
  @override
  _MySplashScreenState createState() => new _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 3,
      navigateAfterSeconds: MyHomePage(),
      image: Image.asset('assets/launch_image.png'),
      backgroundColor: Colors.black,
      title: Text(
        'JV Developed',
        style: TextStyle(color: Colors.white),
      ),
      photoSize: 100.0,
      loaderColor: Colors.black,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Diamond',
            style: TextStyle(
              fontFamily: 'GreatVibes',
              color: Colors.white,
              fontSize: 48,
            ),
          ),
          Lottie.asset('assets/diamond.json'),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
