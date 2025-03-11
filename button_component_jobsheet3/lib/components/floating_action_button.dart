import 'package:flutter/material.dart';

class FloatingActionButtonDemo extends StatelessWidget {
  void showMessage(String message) {
    print(message);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Floating Action Button Demo')),
      body: Center(child: Text('Press the FAB!')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showMessage('Floating Action Button Clicked!'),
        child: Icon(Icons.add),
      ),
    );
  }
}
