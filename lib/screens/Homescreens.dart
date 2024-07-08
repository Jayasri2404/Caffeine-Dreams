import 'package:flutter/material.dart';
import 'package:myapp/screens/support.dart';
import 'package:myapp/screens/trips.dart';
import 'package:myapp/screens/wallet.dart';

import 'package:myapp/widgets/BottomNavBar.dart';
import 'package:myapp/widgets/Bottomtab.dart';
import 'package:myapp/widgets/appbar.dart';
import 'package:myapp/widgets/profiledashboard.dart';
import 'package:provider/provider.dart';
import 'cart.dart';


class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen>{
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  static List<Widget> _wigetsOptions = <Widget>[
    SupportScreen(),
    TripsScreen(),
    MyApp(),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  void _showLoginBottomSheet(BuildContext context){
    showModalBottomSheet(context: context,
        builder: (context){
      return LoginBottomSheet();
        });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Cart>(
      create: (context) => cart,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: MyappBar(
            title: 'Caffine Dreams',
            scaffoldKey: _scaffoldKey,
            onNotificationTap: (){},
            onLoginTap: ()=> _showLoginBottomSheet(context),
          ),
        ),
        drawer: SideBar(),
        body: _wigetsOptions.elementAt(_selectedIndex),
        bottomNavigationBar: CustomBottomNavbar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
