import 'package:flutter/material.dart';
import './components/flat_button.dart';
import './components/floating_action_button.dart';
import './components/icon_button.dart';
import './components/raisedbutton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 229, 255, 168),
      appBar: AppBar(title: const Text('salman')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Selamat datang di aplikasi saya',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              shadows: [
                Shadow(
                  blurRadius: 5.0,
                  color: Colors.black45,
                  offset: Offset(3.0, 3.0),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          buildNavigationButton(context, 'Raised Button', RaisedButtonDemo()),
          buildNavigationButton(context, 'Flat Button', FlatButtonDemo()),
          buildNavigationButton(context, 'Icon Button', IconButtonDemo()),
          buildNavigationButton(
            context,
            'Floating Action Button',
            FloatingActionButtonDemo(),
          ),
        ],
      ),
    );
  }

  Widget buildNavigationButton(
    BuildContext context,
    String title,
    Widget screen,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => screen),
          );
        },
        child: Text(title),
      ),
    );
  }
}
