import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
             trailing: const Icon(Icons.arrow_forward_ios),
             onTap: (){
               Fluttertoast.showToast(
                   msg: 'Login Success',
               );
               print('${drawerItem[0]} item clicked');
             },
             onLongPress: (){
               Fluttertoast.showToast(msg: 'Home Long pressed');
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
               Fluttertoast.showToast(msg:'Category pressed',);
               print('${drawerItem[1]} item clicked');
             },

             // leading: Icon(Icons.supervised_user_circle),
           ),
           const Divider(height: 1,),
           ListTile(
             title: Text(drawerItem[2]),
             subtitle: const Text('testing 2 more'),
             leading: const Icon(Icons.favorite),
             trailing: const Icon(Icons.arrow_forward_ios),

             // leading: Icon(Icons.supervised_user_circle),
           ),
           const Divider(height: 1,),
           ListTile(
             title: Text(drawerItem[3]),
             subtitle: const Text('testing 2 more'),
             leading: const Icon(Icons.recent_actors_outlined),
             trailing: const Icon(Icons.arrow_forward_ios),

             // leading: Icon(Icons.supervised_user_circle),
           ),

         ],
       ),
     ),
     body: Container(
       // color: Colors.blueGrey,
       child: SingleChildScrollView(
         scrollDirection: Axis.vertical,
         child: Column(
           children: [
             Container(
               alignment: Alignment.centerLeft,
               margin: const EdgeInsets.all(10),
               height: 200,
               width: double.infinity,
               decoration: BoxDecoration(
                 color: Colors.yellow,
                 borderRadius: const BorderRadius.only(
                   topLeft: Radius.circular(50),
                   topRight: Radius.circular(50),
                 ),
                 border: Border.all(color: Colors.black,width: 2),
                 boxShadow: const [BoxShadow(color: Colors.black),],
               ),
               child: Row(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: const [
                   Icon(Icons.home),
                   Icon(Icons.category_outlined),
                   Icon(Icons.person),
                   Icon(Icons.add),
                 ],
               ),
             ),
             ListTile(
               title: Text(drawerItem[0]),
               subtitle: Text('Last seen 4 days ago'),
               leading: Icon(Icons.home_outlined),
               trailing: Icon(Icons.arrow_forward_ios),
               onTap: (){
                 Fluttertoast.showToast(
                   msg: 'Login success',
                 );
                 print('${drawerItem[0]} item clicked');
               },
               onLongPress: (){
                 Fluttertoast.showToast(
                     msg: 'Home Long Pressed',
                 );
               },
             ),
             Divider(height: 4,),
             ListTile(
               title: Text(drawerItem[1]),
               subtitle: Text('favorite item'),
               leading: Icon(Icons.favorite),
               trailing: Icon(Icons.arrow_forward_ios),
               onTap: (){
                 Fluttertoast.showToast(
                   msg: 'favorite item',
                 );
                 print('${drawerItem[1]} item clicked');
               },
               onLongPress: (){
                 Fluttertoast.showToast(
                   msg: 'favorite item Long Pressed',
                 );
               },
             ),
             Divider(height: 4,),
             ListTile(
               title: Text(drawerItem[2]),
               subtitle: Text('User portion clicked'),
               leading: Icon(Icons.verified_user),
               trailing: Icon(Icons.arrow_forward_ios),
               onTap: (){
                 Fluttertoast.showToast(
                   msg: 'User portion clicked',
                 );
                 print('${drawerItem[2]} item clicked');
               },
               onLongPress: (){
                 Fluttertoast.showToast(
                   msg: 'User portion clicked Long Pressed',
                 );
               },
             ),
             Divider(height: 4,),
             ListTile(
               title: Text(drawerItem[3]),
               subtitle: Text('add item clicked'),
               leading: Icon(Icons.add_a_photo),
               trailing: Icon(Icons.arrow_forward_ios),
               onTap: (){
                 Fluttertoast.showToast(
                   msg: 'add item clicked',
                 );
                 print('${drawerItem[3]} item clicked');
               },
               onLongPress: (){
                 Fluttertoast.showToast(
                   msg: 'add item clicked Long Pressed',
                 );
               },
             ),
             Divider(height: 4,),

           ],
         ),
       ),
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



  