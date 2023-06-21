import 'package:flutter/material.dart';

class CircleView extends StatelessWidget {
  const CircleView({required this.circleView, Key? key}) : super(key: key);
  final Icon circleView;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        height: 30,
        width: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100), color: Colors.deepPurple),
        child: circleView,
      ),
    );
  }
}
