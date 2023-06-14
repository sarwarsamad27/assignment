import 'package:flutter/material.dart';
import 'package:navigation_files/screen_one.dart';
class screen_two extends StatefulWidget {
  static const String id = 'screen_two';
  const screen_two({Key? key}) : super(key: key);

  @override
  State<screen_two> createState() => _screen_twoState();
}

class _screen_twoState extends State<screen_two> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text('screen 2'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 100,
                itemBuilder: (context, index){
                  return   ListTile(
                  leading:const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/2726111/pexels-photo-2726111.jpeg?auto=compress&cs=tinysrgb&w=600'),
                  ),
                  title:const  Text('Sarwar samad'),

                  onTap: () {
                  Navigator.pushNamed(context, screen_one.id);
                  },
                  );
                }),
          )
        ],
      )
      // TextButton(
      //   onPressed: () {
      //     Navigator.pop(context);
      //   },
      //   child: Center(child: Text('screen two')),
      // ),
    );
  }
}
