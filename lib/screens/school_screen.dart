import 'package:flutter/material.dart';

class SchoolScreen extends StatelessWidget {
  final String name;
  const SchoolScreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(name)),
    );
  }
}
