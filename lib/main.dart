import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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

  var _title = "I'm Just A Button";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: GradientButton(
            increaseWidthBy: 150.0,
            increaseHeightBy: 40.0,
            child: Text(_title),
            callback: () {
              setState(() {
                _title = "I Told You I'm Just A Button";
              });
            },
            gradient: Gradients.backToFuture,
          ),
        ),
        decoration: BoxDecoration(
          gradient: Gradients.deepSpace

        ),
      ),
    );
  }
}
