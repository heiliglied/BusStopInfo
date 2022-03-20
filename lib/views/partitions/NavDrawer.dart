

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class NavDrawer extends StatelessWidget{

  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          const DrawerHeader(
              child: Text('Side Menu' , style: TextStyle(color: Colors.white, fontSize: 25),),
            decoration: BoxDecoration(
              color:Colors.amber,
                // image: DecorationImage(
                //     fit: BoxFit.fill,
                //     image: AssetImage('assets/images/cover.jpg'))),
            ),
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: const Text('Welcome'),
            onTap: () => {Navigator.of(context).pop()},
          )
        ],
      )
    );
  }

}