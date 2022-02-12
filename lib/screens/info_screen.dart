import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class InfoScreen extends StatefulWidget {
   InfoScreen({Key? key}) : super(key: key);

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
   String message = 'Dafaule Message';

  @override
  Widget build(BuildContext context) {
    ModalRoute? modalRoute = ModalRoute.of(context);
    if(modalRoute != null){
     RouteSettings routeSettings = modalRoute.settings;
     if(routeSettings.arguments!=null){
       Map<String , dynamic> data = routeSettings.arguments as Map<String,dynamic>;
       if(data.containsKey('message')){
         message = data['message'];
       }

     }
    }
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
              setState(() {});
              Navigator.pop(context);
            },
            icon:Icon(Icons.arrow_back_ios)),

        title: Text('Info '),
      ),
      body: Center(
        child: Text(
         message,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),

        ),
      ),
    );
  }
}
