import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'scoped_models/scoped_counters.dart';
import 'screens/home/home.dart';

class App extends StatelessWidget {
  final ScopedCounter model; // = new ScopedCounter();
  const App({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScopedModel<ScopedCounter>(
      model: model,
      child: const MaterialApp(
        title: 'Scoped Model Demo',
        home: MyHomePage(
          title: 'Scoped Model Demo',
        ),
      ),
    );
  }
}
