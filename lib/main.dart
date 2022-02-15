import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '즐거운 하루',
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      )),
      home: const MyAppHome(title: '즐거운 하루'),
    );
  }
}

class MyAppHome extends StatefulWidget {
  const MyAppHome({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<MyAppHome> {
  @override
  Widget build(BuildContext context) {
    void onPress() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SubPage(title: '매렁')),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('니가 날 불렀나'),
          IconButton(onPressed: onPress, icon: const Icon(Icons.ac_unit)),
        ],
      )),
    );
  }
}

class SubPage extends StatefulWidget {
  const SubPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _SubPageState createState() => _SubPageState();
}

class _SubPageState extends State<SubPage> {
  @override
  Widget build(BuildContext context) {
    void onPressed() {
      Navigator.of(context).pop(context);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Have a nice weekend!'),
            IconButton(
                onPressed: onPressed, icon: const Icon(Icons.access_alarm)),
          ],
        ),
      ),
    );
  }
}
