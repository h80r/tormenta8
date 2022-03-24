import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tormenta8/provider/canvas/home.dart';

class HomeCanvas extends ConsumerWidget {
  const HomeCanvas({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is a consumer, meaning
  // that it has a WidgetRef inside its build method which can affect how it
  // behaves.

  // This class is the configuration for the canvas. It holds the values (in
  // this case the title) provided by the parent (in this case the App widget).
  // Fields in a Widget subclass are always marked 'final'.

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // This variable will provide the state of the widget.
    final state = ref.watch(homeProvider);

    // This variable can be used to make changes to the state.
    final notifier = ref.watch(homeProvider.notifier);

    // This method is rerun every time the notifier promotes a change to the
    // state, for instance as done by the notifier.increment call below.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the HomeCanvas object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '${state.count}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: notifier.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

