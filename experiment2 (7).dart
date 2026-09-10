import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MyLayout(),
      ),
    );
  }
}

class MyLayout extends StatelessWidget {
  const MyLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 250,
            color: Colors.blueGrey,
            child: Image.network(
              'https://picsum.photos',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            color: Colors.amber,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Primary Title',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Secondary subtitle content text',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.star,
                  color: Colors.red,
                  size: 30,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16),
              color: Colors.white,
              child: const Text(
                'This paragraph sits inside an expanded container within the main column assembly to demonstrate layout composition.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

