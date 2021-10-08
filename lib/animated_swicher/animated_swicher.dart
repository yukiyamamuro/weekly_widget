import 'package:flutter/material.dart';

class AnimatedSwicherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Swicher'),
      ),
      body: Center(
        child: _Body(),
      ),
    );
  }
}

class _Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  int _widgetId = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedSwitcher(
          duration: const Duration(seconds: 10),
          child: _renderWidget(),
        ),
        ElevatedButton(
            onPressed: () {
              _updateWidget();
            },
            child: const Text('change'))
      ],
    );
  }

  void _updateWidget() {
    setState(() {
      _widgetId = _widgetId == 1 ? 2 : 1;
    });
  }

  Widget _renderWidget() {
    return _widgetId == 1 ? normalWidget() : differentWidget();
  }

  Widget normalWidget() {
    return Container(
      color: Colors.red,
      height: 200,
      width: 100,
    );
  }

  Widget differentWidget() {
    return Container(
      color: Colors.blue,
      height: 100,
      width: 200,
    );
  }
}
