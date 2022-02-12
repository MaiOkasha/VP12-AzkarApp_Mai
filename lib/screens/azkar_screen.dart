import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vp12_azkar_app/screens/about_app_screen.dart';

class AzkarScreen extends StatefulWidget {
  const AzkarScreen({Key? key}) : super(key: key);

  @override
  _AzkarScreenState createState() => _AzkarScreenState();
}

class _AzkarScreenState extends State<AzkarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: true,
        title: const Text('Azkar'),
        actions: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context, '/info_screen',
                arguments: {
             'message' : 'Info Screen',
            },
            );
          }, icon: Icon(Icons.info)
          ),
          IconButton(
            onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AboutAppScreen(message: 'About App',),));


            },
              icon: Icon(Icons.question_answer),
          )

        ],

      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.teal.shade700,
              Colors.teal.shade200,
            ]
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,

              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              clipBehavior: Clip.antiAlias,
              child: Row(
                children: [
                          Expanded(child: Text('أستغفر الله',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 26,
                            ),
                          ),
                          ),
                  Container(
                    color: Colors.blue,
                    width: 60,
                    height: 60,
                    alignment: Alignment.center,

                    child: Text(
                      '0',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),



                        ],
                      ),
            )],
                  ),

              ),

    );


  }
}
