import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: const MyPage(),
    );
  }
} 

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Appbar icon menu'),
        centerTitle: true,
        elevation: 0.0,

       actions: [
        IconButton(
          icon: const Icon(Icons.shopping_cart),
          onPressed: (){
            debugPrint('shopping cart button is clicked');
          },  
       ),
       IconButton(
          icon: const Icon(Icons.search),
          onPressed: (){
            debugPrint('search button is clicked');
          },  
       ),
       ],
     ),
     drawer: Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children:  [
          UserAccountsDrawerHeader(
            currentAccountPicture: const CircleAvatar(
              backgroundImage: AssetImage('assets/joguman.png'),
              backgroundColor: Colors.white,
            ),
            otherAccountsPictures: const [
              CircleAvatar(
                backgroundImage: AssetImage('assets/tosim.png'),
                backgroundColor: Colors.white,
              ),
              // CircleAvatar(
              //   backgroundImage: AssetImage('assets/tosim.png'),
              //   backgroundColor: Colors.white,
              // ),
            ],
            accountName: const Text('BBANTO'),
            accountEmail: const Text('bbanto@bbanto.com'),
            onDetailsPressed: (){
              debugPrint('arrow is clicked');
            },
            decoration: BoxDecoration(
              color: Colors.red[200],
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0))
              ),
              
          ),
          ListTile(
            leading: Icon(Icons.home,
            color: Colors.grey[850],),
            title: const Text('Home'),
            onTap: (){
              debugPrint('Home is clicked');
            },
            trailing: const Icon(Icons.add),
          ),
          ListTile(
            leading: Icon(Icons.settings,
            color: Colors.grey[850],),
            title: const Text('Settings'),
            onTap: (){
              debugPrint('Settings is clicked');
            },
            trailing: const Icon(Icons.add),
          ),
          ListTile(
            leading: Icon(Icons.question_answer,
            color: Colors.grey[850],),
            title: const Text('Q&A'),
            onTap: (){
              debugPrint('Q&A is clicked');
            },
            trailing: const Icon(Icons.add),
          ),
        ],
      ),
     ),
   );
  }
}