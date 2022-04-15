import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/models/counter.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider example"),
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, '/second'),
            icon: const Icon(Icons.shop),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('You have pushed the button this many times:'),
            Count(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<Counter>().increment(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Count extends StatelessWidget {
  const Count({Key? key}) : super(key: key);

  // only rebuild this widget on provider watch when value changes

  @override
  Widget build(BuildContext context) {
    return Text(
      context.watch<Counter>().count,
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
