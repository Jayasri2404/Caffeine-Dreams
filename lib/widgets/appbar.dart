
import 'package:flutter/material.dart';

 class MyappBar extends StatelessWidget {
   final String title;
   final GlobalKey<ScaffoldState> scaffoldKey;
    final VoidCallback onNotificationTap;
    final VoidCallback onLoginTap;
    MyappBar({
    required this.title,
      required this.scaffoldKey,
      required this.onNotificationTap,
      required this.onLoginTap
 });




   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text('Caffeine Dreams',
             textAlign: TextAlign.center
         ),
         backgroundColor: Color.fromARGB(188, 233, 30, 98),
         leading: IconButton(
           icon: Icon(Icons.person, color: const Color.fromARGB(255, 34, 49, 255),),
        onPressed: (){
             scaffoldKey.currentState?.openDrawer();
        },
         ),
          actions: <Widget> [
            IconButton(onPressed: onNotificationTap,
                icon: Icon(
                  Icons.doorbell_rounded,
                  color: Color.fromARGB(186, 0, 102, 255),
                )),
            TextButton(onPressed: onLoginTap,
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 33, 131, 243)
                ),
                child: Text('Login',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ))

          ],


       ),
     );
   }
 }

 
