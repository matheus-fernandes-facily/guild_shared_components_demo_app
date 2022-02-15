import 'package:facily_buttons/facily_buttons.dart';
import 'package:facily_text_form_fields/facily_text_form_fields.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final _emailController = TextEditingController();

  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo App'),
      ),
      body: Column(
        children: [
          FacilyFlatButton(
            onPressed: () => {},
            text: 'Botão Facily',
            textColor: Colors.red,
          ),
          FacilyEmailFormField(
              controller: _emailController, label: 'Facily email address')
        ],
      ),
    );
  }
}
