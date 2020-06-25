import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  RendererBinding.instance.initPersistentFrameCallback();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'URL Launcher',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'URL Launcher'),
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
  FlutterFlavor _flutterFlavor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FutureBuilder<Object>(
          future: FlutterFlavor.getFlavor(fallback: 'dev1'),
          builder: (context, snapshot) {
            print('snapshot $snapshot');
            return const Center(
              child: Text('test'),
            );
          }),
    );
  }
}
