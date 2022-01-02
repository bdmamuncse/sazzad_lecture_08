import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
  }

class _HomeScreenState extends State<HomeScreen> {
 String pageTitle='';
 var controller=TextEditingController();
 var drawerItem=['home','category','favourite','recent'];

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
     drawer: Drawer(
       child: ListView(
         children: [
           ListTile(
             title: const Text('Home'),
             subtitle: const Text('testing 2 more'),
             leading: Image.network('https://media-exp1.licdn.com/dms/image/C4E03AQHjlM5aXG1e_Q/profile-displayphoto-shrink_800_800/0/1517668488168?e=1646870400&v=beta&t=NPDpC3l41VrpsBNT7AhTmX4aK02Ag7H8kmSRtEG4ckg'),
             // leading: Icon(Icons.supervised_user_circle),
           ),
           // Text(drawerItem[0]),
           // Text(drawerItem[1]),
           // Text(drawerItem[2]),
           // Text(drawerItem[3]),
         ],
       ),
     ),
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



  