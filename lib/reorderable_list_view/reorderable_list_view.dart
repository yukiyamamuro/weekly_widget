import 'package:flutter/material.dart';

class ReorderableListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ReorderableListView'),
      ),
      body: _WordList(),
    );
  }
}

class _WordList extends StatefulWidget {
  @override
  _WordListState createState() => _WordListState();
}

class _WordListState extends State<_WordList> {
  var myItems = ['a', 'b', 'c'];

  @override
  Widget build(BuildContext context) {
    return ReorderableListView(
      onReorder: (oldIndex, newIndex) {
        if (oldIndex < newIndex) {
          newIndex -= 1;
        }
        final word = myItems.removeAt(oldIndex);
        setState(() {
          myItems.insert(newIndex, word);
        });
      },
      header: Text(
        'reorder header',
        style: TextStyle(fontSize: 40),
      ),
      children: [
        for (final item in myItems)
          ListTile(
            key: ValueKey(item),
            title: Text('Item #$item'),
          ),
      ],
    );
  }
}
