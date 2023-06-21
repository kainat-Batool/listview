import 'package:flutter/material.dart';

class ContainerList extends StatelessWidget {
  ContainerList({required this.containerView, Key? key}) : super(key: key);
  final String containerView;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: Colors.amber),
        child: Center(child: Text("$containerView")),
      ),
    );
  }
}
