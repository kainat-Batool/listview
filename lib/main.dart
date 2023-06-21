import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'container_list.dart';
import 'circle_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  // final String containerView;
  final List circleList = [
    Icon(
      Icons.home,
      color: Colors.white,
    ),
    Icon(
      Icons.email,
      color: Colors.white,
    ),
    Icon(
      Icons.phone,
      color: Colors.white,
    ),
    Icon(
      Icons.start,
      color: Colors.white,
    ),
  ];
  final List containerList = [
    "Container1",
    "Container2",
    "Container3",
    "Container4"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("List View"),
            centerTitle: true,
            backgroundColor: Colors.deepPurple[300],
          ),
          body: Column(
            children: [
              Container(
                  height: 200,
                  child: ListView.builder(
                      itemCount: circleList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: ((context, index) {
                        return CircleView(circleView: circleList[index]);
                      }))),
              Divider(height: 20, color: Colors.red),
              Expanded(
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: ((context, index) =>
                      ContainerList(containerView: containerList[index])),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
