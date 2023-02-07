import 'package:flutter/material.dart';
import 'package:scoped_model_hello_world/scoped_models/scoped_counters.dart';
import 'app.dart';

void main() => runApp(
      App(
        model: ScopedCounter(),
      ),
    );
