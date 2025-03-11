import 'package:flutter/material.dart';

class FlatButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flat Button Demo")),
      body: Center(
        child: TextButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Flat Button Ditekan!')),
            );
          },
        ),
      ),
    );
  }
}
