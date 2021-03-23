import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Offer App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _counter = 0;
  double price = 25.0;
  double get totalPrice => (price - (price * _counter * 0.01));

  void _incrementCounter() {
    setState(() {
      if (_counter < 100) {
        _counter++;
      }
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 16.0),
                  child: Text(
                    'Current product price : ',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 16.0),
                  child: Text(
                    '${price}',
                    style: TextStyle(color: Colors.red,
                        fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Set Offer for the product',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  onPressed: _decrementCounter,
                  color: Colors.blue,
                  child: Icon(Icons.minimize),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '$_counter %',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
                RaisedButton(
                  onPressed: _incrementCounter,
                  child: Icon(Icons.add),
                  color: Colors.blue,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 32.0, 0, 0),
                  child: Text(
                    'Price After Apply Offer : ',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 32.0, 0, 0),
                  child: Text(
                    '${totalPrice}',
                    style: TextStyle(color: Colors.red,
                    fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
