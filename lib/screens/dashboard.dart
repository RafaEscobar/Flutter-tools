import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawerEnableOpenDragGesture: false,
      body: Text('menu'),
    );
  }
}