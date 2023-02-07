import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:scoped_model_hello_world/scoped_models/scoped_counters.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ScopedCounter _scopedCounter = ScopedCounter();

  void _incrementCounter() {
    setState(() {
      _scopedCounter.increment();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScopedModel<ScopedCounter>(
      model: _scopedCounter,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              ScopedModelDescendant<ScopedCounter>(
                builder: (context, child, model) => Text(
                  '${model.counter1.count}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              ScopedModelDescendant<ScopedCounter>(
                builder: (context, child, model) => Text(
                  '${model.counter2.count}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              ScopedModelDescendant<ScopedCounter>(
                builder: (context, child, model) => Text(
                  '${model.counter3.count}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter, //_scopedCounter.increment(),
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
