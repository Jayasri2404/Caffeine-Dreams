
import 'package:flutter/material.dart';

import 'package:myapp/screens/Accounts.dart';
class SideBar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white60,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(accountName: Text('S jayasri'), accountEmail: Text('user@gmail.com'),
          currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://i.imgur.com/pZTVnuM.png'
            ),
          )
          ),

          InkWell(
            child: ListTile(
              leading: Icon(Icons.person_3_rounded,
              color: Colors.redAccent,),
              title: Text('MyProfiles'),
              onTap: (){
                Navigator.pop(context, MaterialPageRoute(builder: (context) => MyAccounts()));
              },
            ),
          ),

          InkWell(
            child: ListTile(
              leading: Icon(Icons.info,
                color: Colors.blueAccent,),
              title: Text('About'),
              onTap: (){
                Navigator.pop(context, MaterialPageRoute(builder: (context) => MyAccounts()));
              },
            ),
          ),

          InkWell(
            child: ListTile(
              leading: Icon(Icons.settings,
                color: Colors.grey,),
              title: Text('Settings'),
              onTap: (){
                Navigator.pop(context, MaterialPageRoute(builder: (context) => MyAccounts()));
              },
            ),
          ),


        ],
      ),
    ) ;
  }
}
