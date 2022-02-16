import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter=0;
  String _content='أستغفر الله';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          ++_counter;
        });
      },
        child: const Icon(Icons.add),
      ),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: true,
        title: const Text('Azkar'),
        actions: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context, '/bio_screen',
            );
          }, icon: const Icon(Icons.info)
          ),

          PopupMenuButton<String>(
            onSelected: (value){
              if(_content!= value){
                setState(() {
                  _content=value;
                  _counter=0;
                });
              }
            },
              itemBuilder: (context){
            return[
              const PopupMenuItem(
                child: Text('أستغفر الله'),
                value: 'أستغفر الله',
                height: 30,
              ),
    const PopupMenuDivider(),

              const PopupMenuItem(child: Text('الحمدلله'),
                 value: 'الحمدلله',
                height: 30,
             ),
              const PopupMenuDivider(),
              const PopupMenuItem(child: const Text('سبحان الله'),
                  value: 'سبحان الله',
                height: 30,
             ),
            ];
          }
          ),
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
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('images/azkar.jpg'),
            ),
            const SizedBox(height: 15,),
            Card(
              margin: const EdgeInsetsDirectional.only(bottom: 20),
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              clipBehavior: Clip.antiAlias,
              child: Row(
                children: [
                           Expanded(child:
                          Text(_content,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
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
                      _counter.toString(),
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                        ],
                      ),
            ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: ElevatedButton(
                 onPressed: (){
                   setState(() {
                     ++_counter;
                   });
                   print('Counter: $_counter');
                 },
                child: const Text('تسبيح'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue.shade600,
                    minimumSize: const Size(0,45),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.only(topStart: Radius.circular(10)),
                    )
                  ),
              ),
              ),
              Expanded(child: ElevatedButton(
                onPressed: (){
                  setState(() {
                    _counter=0;
                  }
                  );
                },
                child: const Text('اعادة'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal.shade300,
                  minimumSize: const Size(0, 45),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadiusDirectional.only(bottomEnd: Radius.circular(10))
                  )
                ),

              ),
              ),
            ],
          ),
        ],
                  ),

              ),
    );
  }
}
