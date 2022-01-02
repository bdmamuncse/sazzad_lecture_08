import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
  }

class _HomeScreenState extends State<HomeScreen> {
 String pageTitle='';
 var controller=TextEditingController();

 @override
  void initState(){
   pageTitle='Home page';
   print('init state called');
   screenBuildStatus('intestate called');
   super.initState();
 }

  @override
  Widget build(BuildContext context) {
    print('build method called');
   return Scaffold(
     // backgroundColor: Colors.lightBlue,
     appBar: AppBar(
       title: Text(pageTitle),
       backgroundColor: Colors.amber,
       actions: [
         // Text('Click'),
         IconButton(
             onPressed: (){
               setState(() {
                 pageTitle='Searching....';
               });
             },
             icon: const Icon(
               Icons.search,
               size: 14,
               color: Colors.black,
             )
         ),

         const Center(child:
         Text('click', overflow:TextOverflow.ellipsis,style: TextStyle(color: Colors.black),))
       ],
     ),
     drawer: const Drawer(),
     body: Container(
       color: Colors.blueGrey,
     ),
   );
  }

  @override
  void dispose(){
   controller.dispose();
   controller.clear();
    print('dispose method called called');
   super.dispose();
  }

  void screenBuildStatus(String status){
   print(status);

  }

}



  