import 'package:flutter/material.dart';
import 'package:praktikum_4/presentation/order_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Selamat datang di Home Page!'),
            const SizedBox(height: 8), // Replaced 'spacing' with SizedBox
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const OrderPage()),
                );
              },
              child: const Text('Order Now'),
            ),
          ],
        ),
      ),
    );
  }
}