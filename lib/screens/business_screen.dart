import 'package:flutter/material.dart';

class BusinessScreen extends StatelessWidget {
  final String name;
  const BusinessScreen({super.key, required this.name});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(name)),
    );
  }
}
