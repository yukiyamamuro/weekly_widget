import 'package:flutter/material.dart';

class AnimatedIconPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _Body();
  }
}

class _Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<_Body> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Icon'),
      ),
      body: Center(
        child: Column(
          children: [
            _buildAnimatedIconsCard(
              AnimatedIcons.arrow_menu,
              AnimatedIcons.menu_arrow,
              label1: "arrow_menu",
              label2: "menu_arrow",
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.check),
        onPressed: () async {
          await _controller.forward();
          await Future.delayed(Duration(seconds: 2));
          await _controller.reverse();
        },
      ),
    );
  }

  Widget _buildAnimatedIconWidget(AnimatedIconData icon,
      {required String label}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AnimatedIcon(
          icon: icon,
          progress: _controller,
        ),
        Text(label),
      ],
    );
  }

  Widget _buildAnimatedIconsCard(
    AnimatedIconData icon1,
    AnimatedIconData icon2, {
    required String label1,
    required String label2,
  }) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _buildAnimatedIconWidget(
            icon1,
            label: label1,
          ),
          SizedBox(width: 40.0),
          _buildAnimatedIconWidget(
            icon2,
            label: label2,
          ),
        ],
      ),
    );
  }
}
