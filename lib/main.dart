import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tormenta8/canvas/home.dart';

void main() {
  runApp(
    // The ProviderScope widget saves the state of all Providers, so it needs to
    // be at the top of your Widget tree.
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: HomeCanvas(title: 'Flutter Demo Home Page'),
    );
  }
}

