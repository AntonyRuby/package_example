import 'package:flutter/material.dart';
import 'package:package_example/package_example.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CustomWidget().customTextField(context),
              CustomWidget()
                  .customText(context, style: TextStyle(color: Colors.red))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            CustomWidget.showCustomAlertBox(
                context: context, willDisplayWidget: const Text('Success'));
          },
          child: const Icon(Icons.add),
        ));
  }
}
