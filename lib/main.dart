import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Text Field'),
    );
  }
}

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
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 8.0),
                child: const Text(
                  "Filled Text",
                  style: TextStyle(
                      fontSize: 24, decoration: TextDecoration.underline),
                ),
              ),
              const SizedBox(
                width: double.infinity,
                height: 50,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your username',
                ),
              ),
              const SizedBox(
                width: double.infinity,
                height: 50,
              ),
              Container(
                margin: const EdgeInsets.all(8.0),
                child: TextFormField(
                  maxLength: 10,
                  initialValue: "Enter name",
                  decoration: const InputDecoration(
                    labelText: "Label Text",
                    labelStyle: TextStyle(color: Colors.amber),
                    helperText: "Helper Text",
                    suffixIcon: Icon(Icons.add_a_photo),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.amberAccent)),
                    icon: Icon(Icons.add),
                  ),
                ),
              ),
              const SizedBox(
                width: double.infinity,
                height: 50,
              ),
              const Text(
                "Outlined Text",
                style: TextStyle(
                    fontSize: 24, decoration: TextDecoration.underline),
              ),
              const SizedBox(
                width: double.infinity,
                height: 50,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter a search term',
                ),
              ),
              const SizedBox(
                width: double.infinity,
                height: 50,
              ),
              Container(
                margin: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Enter name",
                    errorText: "Error",
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.access_alarm),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
