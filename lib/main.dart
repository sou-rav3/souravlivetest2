import 'package:flutter/material.dart';

void main() {
  runApp(LivetestApp());
}

class LivetestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Text Styling',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Flutter Text Styling',
              style: TextStyle(
                  color: Colors.black)),
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          Text(
            'Flutter Text Styling',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Experiment with text styles',
            style: TextStyle(
              fontSize: 18.0,
              fontStyle: FontStyle.italic,
            ),
          ),
          SizedBox(height: 20),
          TextButton(
            onPressed: () {
              final snackBar = SnackBar(
                content: Text('You clicked the button!'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: Text('Click Me'),
          ),
          SizedBox(height: 20),
          Text(
            'Welcome to Flutter!',
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
        ],
      ),
    );
  }
}
