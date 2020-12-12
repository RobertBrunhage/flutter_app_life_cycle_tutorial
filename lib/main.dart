import 'package:flutter/material.dart';

import 'app_life_cycle_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppLifeCycleManager(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> /*with WidgetsBindingObserver*/ {
  /*@override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    print('AppLifecycleState: $state');
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('route'),
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => AnotherPage(),
              ),
            );
          },
        ),
      ),
    );
  }

  /*@override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }*/
}

class AnotherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
