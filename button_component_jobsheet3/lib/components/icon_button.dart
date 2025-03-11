import 'package:flutter/material.dart';

class IconButtonDemo extends StatelessWidget {
  void showMessage(String message) {
    print(message);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Icon Button Demo')),
      body: Center(child: IconButton(icon: Icon(Icons.thumb_up))),
    );
  }
}
