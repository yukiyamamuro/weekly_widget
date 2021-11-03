import 'package:flutter/material.dart';

class IndexedStackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Indexed Stack'),
      ),
      body: _stacks(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: 'Menu'),
        ],
      ),
    );
  }
}

class _stacks extends StatefulWidget {
  @override
  _stacksState createState() => _stacksState();
}

class _stacksState extends State<_stacks> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IndexedStack(
          index: _selectedIndex,
          children: [
            WidgetOne(),
            WidgetTwo(),
            WidgetThree(),
          ],
        ),
        Row(
          children: [
            TextButton(
              child: Text('1枚目'),
              onPressed: () {
                setState(() {
                  _selectedIndex = 0;
                });
              },
            ),
            TextButton(
              child: Text('2枚目'),
              onPressed: () {
                setState(() {
                  _selectedIndex = 1;
                });
              },
            ),
            TextButton(
              child: Text('3枚目'),
              onPressed: () {
                setState(() {
                  _selectedIndex = 2;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}

class WidgetOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.green,
        child: Text('これは1枚目の画面です'),
        padding: EdgeInsets.all(100),
      ),
    );
  }
}

class WidgetTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.red,
        child: Text('これは2枚目の画面です'),
        padding: EdgeInsets.all(100),
      ),
    );
  }
}

class WidgetThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.yellow,
        child: Text('これは3枚目の画面です'),
        padding: EdgeInsets.all(100),
      ),
    );
  }
}
