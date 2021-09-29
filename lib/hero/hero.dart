import 'package:flutter/material.dart';

class HeroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Hero(
              tag: 'tag',
              child: Image.asset('assets/images/monster.png'),
            ),
            onTap: () => _gotoDetailsPage(context),
            title: const Text('Tap on the image'),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Hero(
              tag: 'tag',
              child: Image.asset('assets/images/monster.png'),
            ),
            onTap: () => _gotoDetailsPage(context),
            title: const Text('Tap on the image'),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Hero(
              tag: 'tag',
              child: Image.asset('assets/images/monster.png'),
            ),
            onTap: () => _gotoDetailsPage(context),
            title: const Text('Tap on the image'),
          ),
        ],
      ),
    );
  }
}

void _gotoDetailsPage(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(
    builder: (BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text('Hero?'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(tag: 'tag', child: Image.asset('assets/images/monster.png'))
          ],
        ),
      ),
    ),
  ));
}
