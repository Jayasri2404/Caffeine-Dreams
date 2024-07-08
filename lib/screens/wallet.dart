import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login and Wallet Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginAndWalletScreen(),
    );
  }
}

class LoginAndWalletScreen extends StatefulWidget {
  const LoginAndWalletScreen({Key? key}) : super(key: key);

  @override
  _LoginAndWalletScreenState createState() => _LoginAndWalletScreenState();
}

class _LoginAndWalletScreenState extends State<LoginAndWalletScreen> {
  String userEmail = 'user@example.com'; // Example user email
  String userPhone = '+1234567890'; // Example user phone number
  bool isLoggedIn = true; // Example: Assume user is logged in initially

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center( // Center widget added here
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (!isLoggedIn)
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Please log in to view your wallet details.',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            if (isLoggedIn) ...[
              Text(
                'Welcome to SupportScreen',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'User Email: $userEmail',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                'User Phone: $userPhone',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    isLoggedIn = false;
                  });
                },
                child: Text('Logout'),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
