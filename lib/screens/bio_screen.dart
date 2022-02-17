import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BioScreen extends StatelessWidget {
  const BioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Bio',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
      ),
      body: Stack(
        children: [
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 6,sigmaY: 6),
              child: Image.asset('images/teal.png',
              fit: BoxFit.cover,
              height: double.infinity,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('images/avatar.jpg'),
              ),
              const SizedBox(height: 10,),
              const Text('مي فؤاد عكاشة',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              const SizedBox(height: 20,),
             Container(
               child: ListTile(
                 leading:IconButton(onPressed: (){
                   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                     content: const Text('أرسل البريد الالكتروني'),
                     duration: const Duration(seconds: 3),
                     backgroundColor: Colors.grey,
                     action: SnackBarAction(label: 'تراجع',
                       onPressed: (){},
                       textColor: Colors.white,
                     ),
                     onVisible: ()=> print('SnackBar is visible now'),
                     behavior: SnackBarBehavior.floating,
                     margin: const EdgeInsetsDirectional.only(end: 20,start: 20,bottom: 20),
                     dismissDirection: DismissDirection.horizontal,
                   ));

                 }, icon: const Icon(Icons.send,
                   textDirection: TextDirection.ltr,
                 ),
               ),


                 title: const Text('عنوان البريد الالكتروني',
                   textAlign: TextAlign.center,
                   style: TextStyle(
                     color: Colors.black,
                     fontWeight: FontWeight.bold,
                     fontSize: 20,
                   ),
                 ),
                 subtitle: const Text('maiokasha930@gmail.com',
                   style: TextStyle(
                     color: Colors.grey,
                     fontWeight: FontWeight.w600,
                     fontSize: 18,
                   ),
                 ),
                 trailing: const Icon(Icons.email_outlined),
               ),
               height: 80,
               margin: const EdgeInsetsDirectional.only(start: 20,end: 20,bottom: 10),
              // padding: EdgeInsetsDirectional.only(top: 5,bottom: 10),
               //padding: EdgeInsetsDirectional.only(start: 40,end: 40,bottom: 20),
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                 color: Colors.white,
               ),
             ),
            ],
          ),
        ],
      ),
    );
  }
}
