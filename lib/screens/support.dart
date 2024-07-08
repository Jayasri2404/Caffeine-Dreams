import 'package:flutter/material.dart';
import 'cart.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  final List<Map<String, String>> containerTexts = [
    {'name': 'Latte', 'image': 'assets/images/latte.jpeg'},
    {'name': 'Cappuccino', 'image': 'assets/images/cappuccino.jpeg'},
    {'name': 'Espresso', 'image': 'assets/images/espresso.jpeg'},
    {'name': 'Mocha', 'image': 'assets/images/mocha.jpeg'},
    {'name': 'Macchiato', 'image': 'assets/images/macchiato.jpeg'},
    {'name': 'Americano', 'image': 'assets/images/americano.jpeg'},
    {'name': 'Flat White', 'image': 'assets/images/flat_white.jpg'},
    {'name': 'Affogato', 'image': 'assets/images/affogato.jpg'},
    {'name': 'Irish Coffee', 'image': 'assets/images/irish_coffee.jpg'},
    {'name': 'Vienna Coffee', 'image': 'assets/images/vienna_coffee.jpg'},
  ];

  void _navigateToDetailPage(BuildContext context, String name, String imagePath) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailPage(name: name, imagePath: imagePath),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose your coffee'),
      ),
      body: ListView.builder(
        itemCount: containerTexts.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => _navigateToDetailPage(context, containerTexts[index]['name']!, containerTexts[index]['image']!),
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(color: Colors.blueGrey, width: 1.0),
              ),
              child: Text(
                containerTexts[index]['name']!,
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          );
        },
      ),
    );
  }
}

class DetailPage extends StatefulWidget {
  final String name;
  final String imagePath;

  const DetailPage({Key? key, required this.name, required this.imagePath}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int _counter = 1;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 1) _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(widget.imagePath, height: 200, fit: BoxFit.cover),
            SizedBox(height: 16.0),
            Text(
              'You chose: ${widget.name}',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: _decrementCounter,
                ),
                Text(
                  '$_counter',
                  style: TextStyle(fontSize: 24.0),
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: _incrementCounter,
                ),
              ],
            ),
            SizedBox(height: 16.0),
           ElevatedButton(
  onPressed: () {
    cart.addItem(widget.name, widget.imagePath, _counter);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Added $_counter ${widget.name}(s) to cart!'),
      ),
    );
  },
  child: Text('Add to Cart'),
),
          ],
        ),
      ),
    );
  }
}

