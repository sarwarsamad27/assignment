import 'package:flutter/material.dart';
import 'package:navigation_files/screen_two.dart';

class screen_one extends StatefulWidget {
  static const String id = 'screen_one';
  const screen_one({Key? key}) : super(key: key);

  @override
  State<screen_one> createState() => _screen_oneState();
}

class _screen_oneState extends State<screen_one> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('navigation drawer'),
        backgroundColor: Colors.cyan,
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // DrawerHeader(child: Text('Sarwar Samad',)),
       const    UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Color(0xff764abc)),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/2726111/pexels-photo-2726111.jpeg?auto=compress&cs=tinysrgb&w=600'),
            ),
            accountName: Text('Shahroz'),
            accountEmail: Text('sarwarsamad27@gmail.com'),
          ),
          ListTile(
            leading:const  Icon(Icons.home),
            title:const  Text('home 1'),
            onTap: () {
              Navigator.pushNamed(context, screen_two.id);
            },
          ),
          ListTile(
            leading:const  Icon(Icons.calendar_month),
            title:const  Text('calender'),
            onTap: () {
              Navigator.pushNamed(context, screen_one.id);
            },
          ),
          ListTile(
              leading:const  Icon(Icons.logout_outlined),
              title: Text('Log Out'),
              onTap: () {
                Navigator.pushNamed(context, screen_one.id);
              })
        ],
      )
          // Text('sarwar'),
          ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, screen_two.id);

              //         Navigator.push(context, MaterialPageRoute(builder: (context)=>screen_two())
              // );
            },
            child:const  Center(child: Text('screen 1')),
          ),
        ],
      ),
    );
  }
}
