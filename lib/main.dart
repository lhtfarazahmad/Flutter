import 'package:flutter/material.dart';
import 'package:second_app/fetch_data.dart';
import 'package:second_app/form.dart';
import 'package:second_app/navigation.dart';
import 'package:second_app/send_data.dart';
import 'package:second_app/shimmer_loading.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Second App';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const ShimmerExample(),
      ),
    );
  }
}
