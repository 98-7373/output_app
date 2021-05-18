import 'package:flutter/material.dart';
import 'package:output1_app/main_model.dart';
import 'package:provider/provider.dart';

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
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MainModel>(
      create: (context) => MainModel(),
      child: Consumer<MainModel>(
        builder: (context, model, child) => Scaffold(
          appBar: AppBar(
            title: Text("test"),
        ),
         body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("push"),
           CountText(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: model.countText,
          tooltip: 'Increment',
           child: Icon(Icons.add),
        ),
      ),
    ));

  }
}

class CountText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final su = Provider.of<MainModel>(context, listen: false);
    return Text(
      su.suzuki,
    );
  }
}



