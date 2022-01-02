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

           UserAccountsDrawerHeader(
               accountName: const Text('Md. Sazzad Hossain'),
               accountEmail: const Text('sazzad.hossain@thecitybank.com'),
             currentAccountPicture: Image.network(
                 'https://img.icons8.com/office/344/user.png',
             ),
           ),

           // Container(
           //   height: 200,
           //   color: Colors.amber,
           //   child: ,
           // ),


           ListTile(
             title: Text(drawerItem[0]),
             subtitle: const Text('testing 2 more'),
             leading: const Icon(Icons.home_outlined),
             trailing: Icon(Icons.arrow_forward_ios),
             onTap: (){
               print('${drawerItem[0]} item clicked');
             },
             onLongPress: (){
               print('${drawerItem[0]} item clicked');
             },

             // leading: Icon(Icons.supervised_user_circle),
           ),
           const Divider(height: 1,),
           ListTile(
             title: Text(drawerItem[1]),
             subtitle: const Text('testing 2 more'),
             leading: const Icon(Icons.category),
             trailing: const Icon(Icons.arrow_forward_ios),
             onTap: (){
               print('${drawerItem[1]} item clicked');
             },

             // leading: Icon(Icons.supervised_user_circle),
           ),
           Divider(height: 1,),
           ListTile(
             title: Text(drawerItem[2]),
             subtitle: const Text('testing 2 more'),
             leading: const Icon(Icons.favorite),
             trailing: const Icon(Icons.arrow_forward_ios),

             // leading: Icon(Icons.supervised_user_circle),
           ),
           Divider(height: 1,),
           ListTile(
             title: Text(drawerItem[3]),
             subtitle: const Text('testing 2 more'),
             leading: const Icon(Icons.recent_actors_outlined),
             trailing: Icon(Icons.arrow_forward_ios),

             // leading: Icon(Icons.supervised_user_circle),
           ),

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



  