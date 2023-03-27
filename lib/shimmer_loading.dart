import 'dart:async';
import 'package:flutter/material.dart';
import 'package:second_app/widgets/shimmer_list.dart';

class ShimmerExample extends StatefulWidget {
  const ShimmerExample({super.key});

  @override
  State<ShimmerExample> createState() => _ShimmerExampleState();
}

class _ShimmerExampleState extends State<ShimmerExample> {
  var isDatabeingFetched = false;

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      setState(() {
        isDatabeingFetched = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: isDatabeingFetched == false
          ? const ShimmerList()
          : ListView.builder(
              itemCount: 20,
              itemBuilder: (context, position) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: InkWell(
                      onTap: () {
                        // ignore: avoid_print
                        print("Tapped");
                      },
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(position.toString()),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
    );
  }
}
