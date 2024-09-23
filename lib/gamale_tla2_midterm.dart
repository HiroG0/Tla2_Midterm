import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Midterm State Management',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) _counter--;
    });
  }

  // Method to reset the counter
  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  // New method to determine the background color
  Color _getBackgroundColor() {
    return _counter % 2 == 0 ? Colors.blue : Colors.green;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Container(
        color: _getBackgroundColor(), // Sets background color based on counter
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: _incrementCounter,
                    child: Text('Increment'),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: _decrementCounter,
                    child: Text('Decrement'),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: _resetCounter,
                    child: Text('Reset'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
