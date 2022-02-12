import 'package:flutter/material.dart';
class AboutAppScreen extends StatelessWidget {
  const AboutAppScreen({Key? key,required this.message}) : super(key: key);
  final String message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About App'),
      ),
      body: Center(child: Text(message),),
    );
  }
}
