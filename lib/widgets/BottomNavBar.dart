import 'package:flutter/material.dart';

class CustomBottomNavbar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;


  const CustomBottomNavbar({
    required this.currentIndex,
    required this.onTap

});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color.fromARGB(186, 255, 64, 128),
      currentIndex: currentIndex,
      onTap: onTap,
      selectedItemColor: Colors.white60,
      unselectedItemColor: Colors.black,
      showUnselectedLabels: true,

      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: currentIndex == 0 ? Colors.blueAccent : Colors.red,

          ),label: 'MyCoffes'
        ),

        BottomNavigationBarItem(icon: Icon(Icons.add,
        color: currentIndex == 1 ? Colors.black : Colors.red,
        ),
        label: 'MyOrders'
        ),

        BottomNavigationBarItem(icon: Icon(Icons.support,
          color: currentIndex == 2 ? Colors.black : Colors.red,
        ),
            label: 'Support'
        ),

        
      ],
    );
  }
}