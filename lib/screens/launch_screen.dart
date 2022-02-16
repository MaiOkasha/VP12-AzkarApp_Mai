import 'package:flutter/material.dart';


class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  _LaunchScreenState createState() => _LaunchScreenState();
}


class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('Ininte State');
    Future.delayed(const Duration(seconds: 3),(){
     Navigator.pushReplacementNamed(context, '/home_screen');
    });
  }
  @override
  Widget build(BuildContext context) {
    print('Build');
    return Scaffold(
      body: Container(
        alignment: AlignmentDirectional.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [
              Colors.blue.shade400,
              Colors.green.shade200,
            ]
          )
        ),
        child: const Text('Azkar App',
          style:TextStyle(
            color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
          ),
        ),
      )
    );
  }
}
