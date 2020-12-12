import 'package:flutter/material.dart';

class AppLifeCycleManager extends StatefulWidget {
  AppLifeCycleManager({Key key, @required this.child}) : super(key: key);

  final Widget child;

  @override
  _AppLifeCycleManagerState createState() => _AppLifeCycleManagerState();
}

class _AppLifeCycleManagerState extends State<AppLifeCycleManager> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    print('AppLifecycleState: $state');
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
}
