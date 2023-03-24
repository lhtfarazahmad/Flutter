import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TrytoCreateForm extends StatefulWidget {
  const TrytoCreateForm({super.key});

  @override
  State<TrytoCreateForm> createState() => _TrytoCreateFormState();
}

class _TrytoCreateFormState extends State<TrytoCreateForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              label: Text("Name"),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              label: Text("Email"),
            ),
          )
        ],
      ),
    );
  }
}
