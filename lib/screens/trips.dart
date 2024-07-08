// import 'package:flutter/material.dart';

// class TripsScreen extends StatefulWidget {
//   const TripsScreen({super.key});

//   @override
//   State<TripsScreen> createState() => _TripsScreenState();
// }

// class _TripsScreenState extends State<TripsScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }


// 

import 'package:flutter/material.dart';
import 'cart.dart'; // Import the cart

class TripsScreen extends StatefulWidget {
  const TripsScreen({super.key});

  @override
  State<TripsScreen> createState() => _TripsScreenState();
}

class _TripsScreenState extends State<TripsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Orders'),
      ),
      body: cart.items.isEmpty
          ? Center(
              child: Text('No items in cart.'),
            )
          : ListView.builder(
              itemCount: cart.items.length,
              itemBuilder: (context, index) {
                final item = cart.items[index];
                return ListTile(
                  leading: Image.asset(item['imagePath']),
                  title: Text(item['name']),
                  subtitle: Text('Quantity: ${item['quantity']}'),
                );
              },
            ),
    );
  }
}
