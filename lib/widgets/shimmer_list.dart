import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerList extends StatefulWidget {
  const ShimmerList({super.key});

  @override
  State<ShimmerList> createState() => _ShimmerListState();
}

class _ShimmerListState extends State<ShimmerList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),

          //shimmer package
          child: Shimmer.fromColors(
              child: const Shimmerlayout(),
              baseColor: Colors.grey.withOpacity(0.5),
              highlightColor: Colors.white),
        );
      },
    ));
  }
}

class Shimmerlayout extends StatefulWidget {
  const Shimmerlayout({super.key});

  @override
  State<Shimmerlayout> createState() => _ShimmerlayoutState();
}

class _ShimmerlayoutState extends State<Shimmerlayout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.grey,
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 15,
                  width: MediaQuery.of(context).size.width - 150,
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 15,
                  width: MediaQuery.of(context).size.width - 150,
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 15,
                  width: MediaQuery.of(context).size.width - 250,
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
            )
          ]),
    );
  }
}
