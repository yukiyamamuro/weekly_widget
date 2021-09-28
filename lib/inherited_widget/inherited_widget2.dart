import 'package:flutter/material.dart';

class InheritedWidgetPage2 extends StatefulWidget {
  const InheritedWidgetPage2({Key? key}) : super(key: key);

  @override
  State<InheritedWidgetPage2> createState() => _InheritedWidgetPageState();
}

class _InheritedWidgetPageState extends State<InheritedWidgetPage2> {
  var _count = 1;

  @override
  Widget build(BuildContext context) {
    return _Inherited(
      message: _createMessage(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Inherited Widget'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.plus_one),
          onPressed: () => setState(() => _count++),
        ),
        body: Center(
          // ここのconstによってbuild回数が変わる
          child: const _Message(),
        ),
      ),
    );
  }

  String _createMessage() {
    final result = _count % 15 == 0
        ? 'FizzBuzz'
        : (_count % 3 == 0 ? 'Fizz' : (_count % 5 == 0 ? 'Buzz' : '--'));
    print('_count: $_count, result: $result');
    return result;
  }
}

class _Message extends StatelessWidget {
  const _Message({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print('build!!!!');
    return Text(
      'Message: ${_Inherited.of(context, listen: true).message}',
      style: TextStyle(fontSize: 64),
    );
  }
}

class _Inherited extends InheritedWidget {
  _Inherited({
    Key? key,
    required this.message,
    required Widget child,
  }) : super(key: key, child: child);

  final String message;

  static _Inherited of(
    BuildContext context, {
    required bool listen,
  }) {
    return listen
        ? context.dependOnInheritedWidgetOfExactType<_Inherited>()!
        : context.getElementForInheritedWidgetOfExactType<_Inherited>()!.widget
            as _Inherited;
  }

  @override
  bool updateShouldNotify(_Inherited old) => message != old.message;
}
